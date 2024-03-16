package nucleus.model;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Component
@Entity
@DynamicUpdate
@Table(name="N2Employee")
public class Employee implements Serializable {

    private String firstName;
    private String lastName;

    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date dob;
    private String sex;

    private String religion;


    private String email;

    private String proofType;
    @Id
    private long proofId;

    @Embedded
    @Cascade(org.hibernate.annotations.CascadeType.ALL)
    @AttributeOverrides({
            @AttributeOverride(name="street", column = @Column(name = "currentStreet")),
            @AttributeOverride(name="zip", column = @Column(name = "currentZip")),
            @AttributeOverride(name="city", column = @Column(name = "currentCity")),
            @AttributeOverride(name="state", column = @Column(name = "currentState")),
            @AttributeOverride(name="country", column = @Column(name = "currentCountry"))
    })
    private Address currentAddress;

    @Embedded
    @Cascade(org.hibernate.annotations.CascadeType.ALL)
    @AttributeOverrides({
            @AttributeOverride(name="street", column = @Column(name = "permanentStreet")),
            @AttributeOverride(name="zip", column = @Column(name = "permanentZip")),
            @AttributeOverride(name="city", column = @Column(name = "permanentCity")),
            @AttributeOverride(name="state", column = @Column(name = "permanentState")),
            @AttributeOverride(name="country", column = @Column(name = "permanentCountry"))
    })
    private Address permanentAddress;

    private String mobileNo;

    @Embedded
    @Cascade(org.hibernate.annotations.CascadeType.ALL)
    private FamilyDetails familyDetails;


    private double monthlyIncome;

    private double monthlyExpense;

    private double maxEligibleAmount;

    private double dbr;

    @OneToMany(mappedBy = "employee")
    @Cascade({org.hibernate.annotations.CascadeType.DELETE, org.hibernate.annotations.CascadeType.ALL})
    private List<LoanAgreement> loanAgreementList = new ArrayList<>();

    public Employee(String firstName, String lastName, Date dob, String sex, String religion, String email, String proofType, long proofId, Address currentAddress, Address permanentAddress, String mobileNo, FamilyDetails familyDetails) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.dob = dob;
        this.sex = sex;
        this.religion = religion;
        this.email = email;
        this.proofType = proofType;
        this.proofId = proofId;
        this.currentAddress = currentAddress;
        this.permanentAddress = permanentAddress;
        this.mobileNo = mobileNo;
        this.familyDetails = familyDetails;
    }

    public Employee() {

    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getProofType() {
        return proofType;
    }

    public void setProofType(String proofType) {
        this.proofType = proofType;
    }

    public long getProofId() {
        return proofId;
    }

    public void setProofId(long proofId) {
        this.proofId = proofId;
    }

    public Address getCurrentAddress() {
        return currentAddress;
    }

    public void setCurrentAddress(Address currentAddress) {
        this.currentAddress = currentAddress;
    }

    public Address getPermanentAddress() {
        return permanentAddress;
    }

    public void setPermanentAddress(Address permanentAddress) {
        this.permanentAddress = permanentAddress;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public FamilyDetails getFamilyDetails() {
        return familyDetails;
    }

    public void setFamilyDetails(FamilyDetails familyDetails) {
        this.familyDetails = familyDetails;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public double getMonthlyIncome() {
        return monthlyIncome;
    }

    public void setMonthlyIncome(double monthlyIncome) {
        this.monthlyIncome = monthlyIncome;
    }

    public double getMonthlyExpense() {
        return monthlyExpense;
    }

    public void setMonthlyExpense(double monthlyExpense) {
        this.monthlyExpense = monthlyExpense;
    }

    public double getMaxEligibleAmount() {
        return maxEligibleAmount;
    }

    public void setMaxEligibleAmount(double maxEligibleAmount) {
        this.maxEligibleAmount = maxEligibleAmount;
    }

    public double getDbr() {
        return dbr;
    }

    public void setDbr(double dbr) {
        this.dbr = dbr;
    }

    public List<LoanAgreement> getLoanAgreementList() {
        return loanAgreementList;
    }

    public void setLoanAgreementList(List<LoanAgreement> loanAgreementList) {
        this.loanAgreementList = loanAgreementList;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", dob=" + dob +
                ", sex='" + sex + '\'' +
                ", religion='" + religion + '\'' +
                ", email='" + email + '\'' +
                ", proofType='" + proofType + '\'' +
                ", proofId=" + proofId +
                ", currentAddress=" + currentAddress +
                ", permanentAddress=" + permanentAddress +
                ", mobileNo='" + mobileNo + '\'' +
                ", familyDetails=" + familyDetails +
                '}';
    }
}
