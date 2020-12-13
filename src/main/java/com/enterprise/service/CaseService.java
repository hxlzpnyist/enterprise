package com.enterprise.service;

import com.enterprise.entity.Case;

public interface CaseService extends Services<Case>{
    Case selectPrevious(int id);
    Case selectNext(int id);
}
