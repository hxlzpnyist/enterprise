<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/manage/system/pageBase.jsp" %>
<%@ page info="合作伙伴" %>
<%
    Map<String,String> statuss = new LinkedHashMap<String,String>();
    statuss.put("y","显示");
    statuss.put("n","不显示");
%>
<form action="<%=path %>/manage/friend" name="form" id="form" method="post">
    <div style="height:auto!important;height:550px;min-height:550px;">
        <h3 style="border-bottom: 1px solid #D7D7D7;color: #666666;font-size: 28px;padding-bottom: 20px;margin-bottom: 30px;">
            <%=getServletInfo()%>
            <a href="<%=path %>/manage/friend/selectList" class="btn btn-primary"
               style="padding: 2px 15px;float:right;"><i class="icon-double-angle-left"></i>返回列表</a>
        </h3>
        <div class="alert alert-info">
            注意：图片尺寸请参考 130*110。
        </div>
        <table width="100%" border="0" cellspacing="0" cellpadding="10" class="tableBasic">

            <tr style="display: none;">
                <td>id</td>
                <td><input type="hidden" value="${e.id}" name="id" label="id"/></td>
            </tr>
            <tr>
                <th style="text-align: right;" width="200">合作伙伴名称</th>
                <td style="text-align: left;"><input type="text" size="40" value="${e.title}" name="title"
                                                     data-rule="合作伙伴名称:required;title;length[1~45];"
                                                     id="title"/></td>
            </tr>
            <tr>
                <th style="text-align: right;">缩略图</th>
                <td style="text-align: left;"><input type="text"  size="40"
                                                     id="image" name="image" value="${e.image}"
                />
                    <input type="button" name="imageFile" value="选择图片" class="btn btn-primary" style="padding: 0px 12px;margin-top: -5px;"/>
                </td>
            </tr>
            <tr>
                <th style="text-align: right;">状态</th>
                <td style="text-align: left;">
                    <select name="display">
                        <c:forEach var="entry" items="<%=statuss %>">
                            <option value="${entry.key}" <c:if test="${e.display eq entry.key}">selected="selected" </c:if>>${entry.value}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <c:choose>
                        <c:when test="${e.id!=0}">
                            <button method="update" onclick="commit(this)" class="btn btn-info"
                                    style="padding:2px 15px;">
                                保存
                            </button>
                        </c:when>
                        <c:otherwise>
                            <button method="insert" onclick="commit(this)" class="btn btn-info"
                                    style="padding:2px 15px;">
                                新增
                            </button>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </table>
    </div>
</form>

<script type="text/javascript">

    var content;
    KindEditor.ready(function (K) {
        content = K.create('textarea[name="content"]', {
            filterMode: false,
            allowFileManager: true,
            uploadJson: '<%=path%>/manage/file/upload',
            fileManagerJson: '<%=path%>/resource/kindeditor/jsp/file_manager_json.jsp'

        });
        var editor = K.editor({
            allowFileManager : true,
            uploadJson: '<%=path%>/manage/file/upload',
            fileManagerJson : '<%=path%>/resource/kindeditor/jsp/file_manager_json.jsp'
        });

        K('input[name=getHtml]').click(function (e) {
            alert(editor.html());
        });
        K('input[name=isEmpty]').click(function (e) {
            alert(editor.isEmpty());
        });
        K('input[name=getText]').click(function (e) {
            alert(editor.text());
        });
        K('input[name=selectedHtml]').click(function (e) {
            alert(editor.selectedHtml());
        });
        K('input[name=setHtml]').click(function (e) {
            editor.html('<h3>Hello KindEditor</h3>');
        });
        K('input[name=setText]').click(function (e) {
            editor.text('<h3>Hello KindEditor</h3>');
        });
        K('input[name=insertHtml]').click(function (e) {
            editor.insertHtml('<strong>插入HTML</strong>');
        });
        K('input[name=appendHtml]').click(function (e) {
            editor.appendHtml('<strong>添加HTML</strong>');
        });
        K('input[name=imageFile]').click(function() {
            editor.loadPlugin('image', function() {
                editor.plugin.imageDialog({
                    imageUrl : K('#image').val(),
                    clickFn : function(url) {
                        K('#image').val(url);
                        editor.hideDialog();
                    }
                });
            });
        });
        K('input[name=clear]').click(function (e) {
            editor.html('');
        });

    });
    function commit(obj) {
        var _form = $("form");
        _form.attr("action", $(obj).attr("method"));
        _form.submit();
    }
</script>


<%@ include file="/manage/system/baseFoot.jsp" %>
