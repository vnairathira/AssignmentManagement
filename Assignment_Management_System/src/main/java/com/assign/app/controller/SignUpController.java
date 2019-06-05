package com.assign.app.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.assign.app.dto.AdminDTO;
import com.assign.app.exception.ControllerException;
import com.assign.app.exception.ServiceException;
import com.assign.app.service.SignUpService;
@Controller
@RequestMapping("/")
public class SignUpController {
	private final static Logger log=LoggerFactory.getLogger(SignUpController.class);
	@Autowired
	private SignUpService signUpService;
	
	public SignUpController() {
		log.info("created\t"+this.getClass().getSimpleName());
	}
	
	@RequestMapping(value="/signUp",method=RequestMethod.POST)
	public ModelAndView signUpController(AdminDTO adminDTO) throws ControllerException {
		String result=null;
		log.info("signUpController started");
		log.info(adminDTO.toString());
		try {
		 result=signUpService.signUpService(adminDTO);
		}catch (ServiceException e) {
			log.error("ServiceException in service " + e.getMessage());
			throw new ControllerException(e.getMessage());
		}catch (Exception e) {
			log.error(" Exception in controller " + e.getMessage());
		}
		log.info("signUpController ended");
		return new ModelAndView("Index.jsp","msg",result);
	}
	
}
