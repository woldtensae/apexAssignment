package ass.apex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ass.apex.service.AppointmentService;

@Controller
public class AppointmentController {
	
	@Autowired
	AppointmentService appointmentService;
	 @RequestMapping(value = {"/","/book_list"})
	    public String listAssignment(Model model) {
		 		model.addAttribute("allAssignment", appointmentService.getAppointments());
		 	return "";	
	    }
}
