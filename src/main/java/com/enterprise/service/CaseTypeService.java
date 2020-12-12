package com.enterprise.service;

import com.enterprise.entity.CaseType;

public interface CaseTypeService extends Services<CaseType>{
    CaseType selectPrevious(int id);
    CaseType selectNext(int id);
}
