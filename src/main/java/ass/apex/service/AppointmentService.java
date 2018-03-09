package ass.apex.service;

import java.util.List;

import ass.apex.domain.Appointment;

public interface AppointmentService {
	public List<Appointment> getAppointments();
	public void saveAppointment(Appointment appointment);
}
