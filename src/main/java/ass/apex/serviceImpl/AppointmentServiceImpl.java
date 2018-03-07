package ass.apex.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ass.apex.domain.Appointment;
import ass.apex.repository.AppointmentRepository;
import ass.apex.service.AppointmentService;

@Service
public class AppointmentServiceImpl implements AppointmentService{

	@Autowired
	AppointmentRepository appointmentRepository; 
	
	@Override
	public List<Appointment> getAppointments() {
		return (List<Appointment>) appointmentRepository.findAll();
	}

}
