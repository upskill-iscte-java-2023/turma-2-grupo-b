package plume.models;

import javax.persistence.*;

@Entity
@Table(name="sightings")
public class SightingModel {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long id;
    private String observerd_on_string;
    private String observerd_on;
    private String url;
    private String image_url;
    private String tag_list;
    private String description;
    private String place_guess;
    private String latitude;
    private String longitude;
    private String species_guess;
    private String scientific_name;
    private String common_name;
    private String iconic_taxon_name;
    private String taxon_id;


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getObserverd_on_string() {
        return observerd_on_string;
    }

    public void setObserverd_on_string(String observerd_on_string) {
        this.observerd_on_string = observerd_on_string;
    }

    public String getObserverd_on() {
        return observerd_on;
    }

    public void setObserverd_on(String observerd_on) {
        this.observerd_on = observerd_on;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
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

    public String getSpecies_guess() {
        return species_guess;
    }

    public void setSpecies_guess(String species_guess) {
        this.species_guess = species_guess;
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

    public String getIconic_taxon_name() {
        return iconic_taxon_name;
    }

    public void setIconic_taxon_name(String iconic_taxon_name) {
        this.iconic_taxon_name = iconic_taxon_name;
    }

    public String getTaxon_id() {
        return taxon_id;
    }

    public void setTaxon_id(String taxon_id) {
        this.taxon_id = taxon_id;
    }
}
