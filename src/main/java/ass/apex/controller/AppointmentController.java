package ass.apex.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ass.apex.domain.Appointment;
import ass.apex.service.AppointmentService;


@Controller
public class AppointmentController {
	
	@Autowired
	AppointmentService appointmentService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String listAssignment(Model model) {
	 		model.addAttribute("allAppointments", appointmentService.getAppointments());
	 	return "appointment";	
    }
	@RequestMapping(value="/add", method =RequestMethod.POST)
	public @ResponseBody Appointment addAppointment(@Valid @RequestBody Appointment newAppointment, BindingResult result ) {
		appointmentService.saveAppointment(newAppointment);
		return newAppointment;
		
	}
	
}



