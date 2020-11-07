package com.sinsp.richard.web.questions.vo;

import lombok.Data;

@Data
public class FaqVo {
    private int    faqNo;
    private String faqGrpCd;
    private String faqTitle;
    private String faqContents;
    private int    faqOrder;
    private String createId;
    private String createDatetime;
    private String updateId;
    private String updateDatetime;
}