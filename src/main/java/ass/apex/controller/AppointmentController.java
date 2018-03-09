package ass.apex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ass.apex.service.AppointmentService;

@Controller
public class AppointmentController {
	
	@Autowired
	AppointmentService appointmentService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String listAssignment(Model model) {
	 		model.addAttribute("allAssignment", appointmentService.getAppointments());
	 		//checking if i am in the right brach
	 	return "appointment";	
      }
}



