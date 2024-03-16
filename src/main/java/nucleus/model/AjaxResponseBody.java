package nucleus.model;

import com.fasterxml.jackson.annotation.JsonView;

public class AjaxResponseBody {
    @JsonView(Views.Public.class)
    double eligibleLoanAmount;
    @JsonView(Views.Public.class)
    double dbr;

    public double getEligibleLoanAmount() {
        return eligibleLoanAmount;
    }

    public void setEligibleLoanAmount(double eligibleLoanAmount) {
        this.eligibleLoanAmount = eligibleLoanAmount;
    }

    public double getDbr() {
        return dbr;
    }

    public void setDbr(double dbr) {
        this.dbr = dbr;
    }
}
