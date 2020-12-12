package com.enterprise.service;

import com.enterprise.entity.News;

public interface NewsService extends Services<News>{
    News selectPrevious(int id);
    News selectNext(int id);
}
