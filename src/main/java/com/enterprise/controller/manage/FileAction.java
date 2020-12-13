package com.enterprise.controller.manage;


import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONObject;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

@Slf4j
@Controller
@RequestMapping("/manage/file/")
public class FileAction {

    @RequestMapping(value = "upload", method = RequestMethod.POST)
    public void uploadImage(@RequestParam("imgFile") MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws FileUploadException, IOException {
        String path = request.getServletContext().getRealPath("/attached/image");
        String fileName = file.getOriginalFilename();

        File tmpFile = new File(path, fileName);

        file.transferTo(tmpFile);


        JSONObject obj = new JSONObject();
        obj.put("error", 0);
        obj.put("url", "/attached/image/" + fileName);

        response.getWriter().println(obj.toString());
    }


        @RequestMapping(value = "", method = RequestMethod.POST)
    public void uploadFile(@RequestParam("imgFile") MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws FileUploadException, IOException {
        //String savePath = pageContext.getServletContext().getRealPath("/") + "attached/";

//文件保存目录URL
        String saveUrl  = request.getContextPath() + "/attached/";

//定义允许上传的文件扩展名
        HashMap<String, String> extMap = new HashMap<String, String>();
        extMap.put("image", "gif,jpg,jpeg,png,bmp");
        extMap.put("flash", "swf,flv");
        extMap.put("media", "swf,flv,mp3,wav,wma,wmv,mid,avi,mpg,asf,rm,rmvb");
        extMap.put("file", "doc,docx,xls,xlsx,ppt,htm,html,txt,zip,rar,gz,bz2");

//最大文件大小
        long maxSize = 9999999;

        response.setContentType("text/html; charset=UTF-8");

        if(!ServletFileUpload.isMultipartContent(request)){
            log.warn("请选择文件");
            return;
        }

        String dirName = request.getParameter("dir");
        if (dirName == null) {
            dirName = "image";
        }
//创建文件夹
        //savePath += dirName + "/";
        saveUrl += dirName + "/";
        File saveDirFile = new File(saveUrl);
        if (!saveDirFile.exists()) {
            saveDirFile.mkdirs();
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        String ymd = sdf.format(new Date());
        //savePath += ymd + "/";
        saveUrl += ymd + "/";
        File dirFile = new File(saveUrl);
        if (!dirFile.exists()) {
            dirFile.mkdirs();
        }

        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setHeaderEncoding("UTF-8");
        List items = upload.parseRequest(request);
        Iterator itr = items.iterator();
        while (itr.hasNext()) {
            FileItem item = (FileItem) itr.next();
            String fileName = item.getName();
            long fileSize = item.getSize();
            if (!item.isFormField()) {
                //检查文件大小
                if(item.getSize() > maxSize){
                    response.getWriter().println("上传文件大小超过限制。");
                    return;
                }
                //检查扩展名
                String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
                if(!Arrays.<String>asList(extMap.get(dirName).split(",")).contains(fileExt)){
                    response.getWriter().println("上传文件扩展名是不允许的扩展名。\\n只允许\" + extMap.get(dirName) + \"格式。");
                    return;
                }

                SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
                String newFileName = df.format(new Date()) + "_" + new Random().nextInt(1000) + "." + fileExt;
                try{
                    File uploadedFile = new File(saveUrl, newFileName);
                    item.write(uploadedFile);
                }catch(Exception e){
                    response.getWriter().println("上传文件失败。");
                    return;
                }

                JSONObject obj = new JSONObject();
                obj.put("error", 0);
                obj.put("url", saveUrl + newFileName);

                response.getWriter().println(obj.toString());
            }
        }
    }

    private String getError(String message) {
        JSONObject obj = new JSONObject();
        obj.put("error", 1);
        obj.put("message", message);
        return obj.toString();
    }
}
