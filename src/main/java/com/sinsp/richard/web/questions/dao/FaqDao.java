package com.sinsp.richard.web.questions.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sinsp.richard.common.dao.CommonSqlDao;
import com.sinsp.richard.web.questions.vo.FaqVo;

@Repository
public class FaqDao extends CommonSqlDao{

    private static String prefix = "FaqMapper.";
    
    public List<FaqVo> findListFaq() {
        return selectList(prefix + "findListFaq");
    }
    
    public void insertFaq(FaqVo faqVo) {
        insert(prefix + "insertFaq", faqVo);
    }
}