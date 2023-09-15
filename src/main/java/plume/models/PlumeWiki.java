package plume.models;

import jakarta.persistence.*;

@Entity
@Table(name="plume_wiki_database")
public class PlumeWiki {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer id;
    private String imageFile;
    private String commonName;
    private String scientificName;
    private String description;
    private String taxonName;

    public PlumeWiki(Integer id, String imageFile, String commonName, String scientificName, String description, String taxonName) {
        this.id = id;
        this.imageFile = imageFile;
        this.commonName = commonName;
        this.scientificName = scientificName;
        this.description = description;
        this.taxonName = taxonName;
    }

    public PlumeWiki() {

    }

    public int getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    //TODO ver como direccionar para resources/base de dados
    public String getImageFile() {
        return imageFile;
    }

    public void setImageFile(String imageFile) {
        this.imageFile = imageFile;
    }

    //

    public String getCommonName() {
        return commonName;
    }

    public void setCommonName(String commonName) {
        this.commonName = commonName;
    }

    public String getScientificName() {
        return scientificName;
    }

    public void setScientificName(String scientificName) {
        this.scientificName = scientificName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTaxonName() {
        return taxonName;
    }

    public void setTaxonName(String taxonName) {
        this.taxonName = taxonName;
    }
}
