package plume.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="user_sighting")
public class UserSightingModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne
    @JoinColumn(name = "user_id") // Add a foreign key column in the user_sighting table
    private ApplicationUser user;

    @OneToMany(mappedBy = "userSightingModel")
    private List<SightingModel> sightings = new ArrayList<>();

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public ApplicationUser getUser() {
        return user;
    }

    public void setUser(ApplicationUser user) {
        this.user = user;
    }

    public List<SightingModel> getSightings() {
        return sightings;
    }

    public void setSightings(SightingModel sightings) {
        this.sightings.add(sightings);
    }
}
