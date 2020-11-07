package com.sinsp.richard.web.questions.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sinsp.richard.common.exception.RichardException;
import com.sinsp.richard.web.questions.service.FaqService;
import com.sinsp.richard.web.questions.vo.FaqVo;

@Controller
public class FaqController {

    @Autowired
	private FaqService faqService;
    
    private static final Logger logger = LoggerFactory.getLogger(FaqController.class);
    
    @RequestMapping(value="/faq.do", method={RequestMethod.POST, RequestMethod.GET})
    public ModelAndView faq(Model model) throws RichardException {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("questions/faq");
        
        List<FaqVo> list = faqService.findListFaq();
        mav.addObject("faqList", list);
        
        return mav;
    }
    
    @RequestMapping(value="/saveFaq.do", method={RequestMethod.POST, RequestMethod.GET})
    public ModelAndView saveFaq(@ModelAttribute FaqVo faqVo) throws RichardException {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("questions/faq");
        
        // save
        Map<String, Object> resultMap = faqService.saveFaq(faqVo);
        
        List<FaqVo> list = faqService.findListFaq();
        mav.addObject("faqList", list);
        
        return mav;
    }
}