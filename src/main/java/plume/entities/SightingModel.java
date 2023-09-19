package plume.entities;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;

@Entity
@Table(name="sightings")
public class SightingModel {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long id;
    private String observerd_on;
    private String image_url;
    @Lob
    private byte[] photo;
    private String tag_list;
    private String description;
    private String place_guess;
    private String latitude;
    private String longitude;
    private String scientific_name;
    private String common_name;
    private String taxon_id;

    @ManyToOne
    private UserSightingModel userSightingModel;


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getObserverd_on() {
        return observerd_on;
    }

    public void setObserverd_on(String observerd_on) {
        this.observerd_on = observerd_on;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    public byte[] getPhoto() {
        return photo;
    }

    public void setPhoto(byte[] photo) {
        this.photo = photo;
    }

    public UserSightingModel getUserSightingModel() {
        return userSightingModel;
    }

    public void setUserSightingModel(UserSightingModel userSightingModel) {
        this.userSightingModel = userSightingModel;
    }

    public String getTag_list() {
        return tag_list;
    }

    public void setTag_list(String tag_list) {
        this.tag_list = tag_list;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPlace_guess() {
        return place_guess;
    }

    public void setPlace_guess(String place_guess) {
        this.place_guess = place_guess;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public String getScientific_name() {
        return scientific_name;
    }

    public void setScientific_name(String scientific_name) {
        this.scientific_name = scientific_name;
    }

    public String getCommon_name() {
        return common_name;
    }

    public void setCommon_name(String common_name) {
        this.common_name = common_name;
    }

    public String getTaxon_id() {
        return taxon_id;
    }

    public void setTaxon_id(String taxon_id) {
        this.taxon_id = taxon_id;
    }
}
