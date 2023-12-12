package isaoglu.cahit.VetApp.dao;

import isaoglu.cahit.VetApp.entitiy.Doctor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DoctorRepo extends JpaRepository<Doctor, Long> {
    Doctor findByName(String name);
    Doctor findById(long id);
    boolean existsByMail(String mail);

}
