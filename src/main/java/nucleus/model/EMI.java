package nucleus.model;

import javax.persistence.Embeddable;

@Embeddable
public class EMI {
    public int month;
    public double beginningAmount;
    public double installment;
    public double interestPaid;
    public double endingAmount;

    public double principalPaid;

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public double getBeginningAmount() {
        return beginningAmount;
    }

    public void setBeginningAmount(double beginningAmount) {
        this.beginningAmount = beginningAmount;
    }

    public double getInstallment() {
        return installment;
    }

    public void setInstallment(double installment) {
        this.installment = installment;
    }

    public double getInterestPaid() {
        return interestPaid;
    }

    public void setInterestPaid(double interestPaid) {
        this.interestPaid = interestPaid;
    }

    public double getEndingAmount() {
        return endingAmount;
    }

    public void setEndingAmount(double endingAmount) {
        this.endingAmount = endingAmount;
    }

    public double getPrincipalPaid() {
        return principalPaid;
    }

    public void setPrincipalPaid(double principalPaid) {
        this.principalPaid = principalPaid;
    }

    public EMI() {
    }

    public EMI(int month, double beginningAmount, double installment, double interestPaid, double endingAmount, double principalPaid) {
        this.month = month;
        this.beginningAmount = beginningAmount;
        this.installment = installment;
        this.interestPaid = interestPaid;
        this.endingAmount = endingAmount;
        this.principalPaid = principalPaid;
    }

    @Override
    public String toString() {
        return "EMI{" +
                "month=" + month +
                ", beginningAmount=" + beginningAmount +
                ", installment=" + installment +
                ", interestPaid=" + interestPaid +
                ", endingAmount=" + endingAmount +
                ", principalPaid=" + principalPaid +
                '}';
    }
}
