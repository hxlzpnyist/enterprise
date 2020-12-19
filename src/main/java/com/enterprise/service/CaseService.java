package com.enterprise.service;

import com.enterprise.entity.Case;

import java.util.List;

public interface CaseService extends Services<Case>{
    Case selectPrevious(int id);
    Case selectNext(int id);

    List<Case> getByCaseTypeId(Integer caseTypeId);
}
