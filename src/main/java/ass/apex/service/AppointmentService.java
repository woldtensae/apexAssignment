package ass.apex.service;

import java.sql.Date;
import java.util.List;

import ass.apex.domain.Appointment;

public interface AppointmentService {
	public List<Appointment> getAppointments();
	public void saveAppointment(Appointment appointment);
	public List<Appointment> getAllAppointmentsByDate(Date date);
}
