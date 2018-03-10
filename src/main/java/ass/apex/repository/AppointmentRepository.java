package ass.apex.repository;

import java.sql.Date;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import ass.apex.domain.Appointment;

@Repository
public interface AppointmentRepository  extends CrudRepository<Appointment, Long>{
	public List<Appointment> findAllAppointmentsByDate(Date date);
}
