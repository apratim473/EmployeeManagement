package nucleus.model;

import javax.persistence.Embeddable;

@Embeddable
public class FamilyDetails {
    private String name;
    private String relation;
    private String contactNo;
    private String adhaar;

    public FamilyDetails() {
    }

    public FamilyDetails(String name, String relation, String contactNo, String adhaar) {
        this.name = name;
        this.relation = relation;
        this.contactNo = contactNo;
        this.adhaar = adhaar;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRelation() {
        return relation;
    }

    public void setRelation(String relation) {
        this.relation = relation;
    }

    public String getContactNo() {
        return contactNo;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }

    public String getAdhaar() {
        return adhaar;
    }

    public void setAdhaar(String adhaar) {
        this.adhaar = adhaar;
    }

    @Override
    public String  toString() {
        return "FamilyDetails{" +
                "name='" + name + '\'' +
                ", relation='" + relation + '\'' +
                ", contactNo='" + contactNo + '\'' +
                ", adhaar='" + adhaar + '\'' +
                '}';
    }
}
