package com.sinsp.richard.web.questions.service;

import java.util.List;
import java.util.Map;

import com.sinsp.richard.web.questions.vo.FaqVo;

public interface FaqService {
    public List<FaqVo> findListFaq();
    public Map<String, Object> saveFaq(FaqVo faqVo);
}