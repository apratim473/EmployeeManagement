package nucleus.model;

public class LoanReqData {
    double monthlyIncome;
    double monthlyExpense;
    double repaymentFrequency;
    double roi;
    double tenure;

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

    public double getRepaymentFrequency() {
        return repaymentFrequency;
    }

    public void setRepaymentFrequency(double repaymentFrequency) {
        this.repaymentFrequency = repaymentFrequency;
    }

    public double getRoi() {
        return roi;
    }

    public void setRoi(double roi) {
        this.roi = roi;
    }

    public double getTenure() {
        return tenure;
    }

    public void setTenure(double tenure) {
        this.tenure = tenure;
    }
}
