package ass.apex.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import ass.apex.domain.Appointment;

@Repository
public interface AppointmentRepository  extends CrudRepository<Appointment, Long>{
	
}
