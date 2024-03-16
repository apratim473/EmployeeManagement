package nucleus.controller;

import com.fasterxml.jackson.annotation.JsonView;
import nucleus.model.*;
import nucleus.services.EmployeeService;
import nucleus.services.LoanCalculation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import java.util.Date;
import java.util.List;

@Controller

public class EmployeeController {

    @Autowired
    EmployeeService employeeService;

    @GetMapping("/")
    public String index(){
        return "index";
    }

    @GetMapping("/login")
    public String customLogin(){
        return "login";
    }

    @GetMapping("/accessdeny")
    public String error()  {
        return "accessdeny";
    }

    @GetMapping("/addEmployee")
    public String addemployeeForm(Model model){
        Employee employee = new Employee();
        Address currentAddress = new Address();
        Address permanentAddress = new Address();
        FamilyDetails familyDetails = new FamilyDetails();
        employee.setCurrentAddress(currentAddress);
        employee.setPermanentAddress(permanentAddress);
        employee.setFamilyDetails(familyDetails);

        model.addAttribute("css","success");
        model.addAttribute("employee",employee);

        return "addemployee";
    }

    @PostMapping("/addEmployeeForm")
    public String addEmployeeDetails(@ModelAttribute("employee") Employee employee, ModelMap mp){
        if(!employeeService.emailExists(employee.getEmail()) && !employeeService.idExists(employee.getProofId())){
            String msg = this.employeeService.addEmployeeService(employee);
            mp.addAttribute("css","success");
            mp.addAttribute("msg",msg);

        }
        else if(employeeService.emailExists(employee.getEmail())){
            mp.addAttribute("css","warning");
            mp.addAttribute("msg","Email ID already exists!");
            mp.addAttribute("head","Alert! ");
            return "addemployee2";
        }

        else if(employeeService.idExists(employee.getProofId())){
            mp.addAttribute("css","warning");
            mp.addAttribute("msg","Proof ID already exists!");
            mp.addAttribute("head","Alert! ");
            return "addemployee2";
        }
        return "index";
    }


    @GetMapping("/searchEmployee")
    public String searchEmployee(){
        return "search";
    }

    @PostMapping("/searchEmployeeForm")
    public String searchEmployeeDetails(Model model, @RequestParam("searchEmail") String searchEmail ){
        if(employeeService.emailExists(searchEmail)){
            Employee employee = employeeService.searchEmployeeService(searchEmail);
            model.addAttribute("employee", employee);
            return "searchView";
        }
        else{
            model.addAttribute("css","warning");
            model.addAttribute("msg","No such record exists!");
            model.addAttribute("head","Alert! ");
            return "search";
        }

    }

    @GetMapping("/updateEmployee")
    public String updateEmployee(){
        return "update";
    }
    @PostMapping("/updateEmployeeForm")
    public String updateEmployeeView(Model model, @RequestParam("searchEmail") String searchEmail ){
        if(employeeService.emailExists(searchEmail)==true) {
            Employee employee = employeeService.searchEmployeeService(searchEmail);
            model.addAttribute("employee", employee);
            return "updateView";
        }
        else{
            model.addAttribute("css","warning");
            model.addAttribute("msg","No such record exists!");
            model.addAttribute("head","Alert! ");
            return "update";
        }
    }

    @PostMapping("/updateDetails")
    public String updateEmployeeDetails(@ModelAttribute("employee") Employee employee, ModelMap mp){
        String msg = employeeService.updateEmployeeService(employee);
        mp.addAttribute("css","success");   //warning danger
        mp.addAttribute("msg",msg);
//        mp.addAttribute("head","Success! "); //success alert
        return "index";   //redirect:/
    }

    @GetMapping("/deleteEmployee")
    public String deleteEmployee(){
        return "delete";
    }

    @PostMapping("/deleteEmployeeForm")
    public String deleteEmployeeView(Model model, @RequestParam("searchEmail") String searchEmail){
        if(employeeService.emailExists(searchEmail)==true) {
            Employee employee = employeeService.searchEmployeeService(searchEmail);
            model.addAttribute("employee", employee);
            return "deleteView";
        }
        else{
            model.addAttribute("css","warning");
            model.addAttribute("msg","No such record exists!");
            model.addAttribute("head","Alert! ");
            return "delete";
        }
    }

    @PostMapping("/deleteDetails")
    public String deleteEmployeeDetails(@ModelAttribute("employee") Employee employee, ModelMap mp){
        String msg = employeeService.deleteEmployeeService(employee);
        mp.addAttribute("css","success");
        mp.addAttribute("msg",msg);
//        mp.addAttribute("head","");
        return "index";
    }


    @GetMapping("/loanRequest")
    public String loanRequest(){
        return "loanRequestSearch";
    }
    @PostMapping("/loanSearchForm")
    public String loanSearchForm(Model model, @RequestParam("searchEmail") String searchEmail){
        if(employeeService.emailExists(searchEmail)) {
            Employee employee = employeeService.searchEmployeeService(searchEmail);
            model.addAttribute("employee", employee);
            return "loanrequest";
        }
        else{
            model.addAttribute("css","warning");
            model.addAttribute("head","Alert! ");
            model.addAttribute("msg","Employee doesn't exist.");
            return "loanRequestSearch";
        }
    }

    @PostMapping("/loanRequestView")
    public String updateLoanDetails(@RequestParam("email") String email,
                                    @RequestParam("monthlyIncome") double monthlyIncome,
                                    @RequestParam("monthlyExpense") double monthlyExpense,
                                    @RequestParam("loanProduct") String loanProduct,
                                    @RequestParam("roi") double roi,
                                    @RequestParam("tenure") double tenure,
                                    @RequestParam("repaymentFrequency") double repaymentFrequency,
                                    @RequestParam("eligibleLoanAmount") double eligibleLoanAmount,
                                    @RequestParam("dbr") double dbr,
                                    @RequestParam("loanAmount") double loanAmount, ModelMap mp){


        Employee employee = employeeService.searchEmployeeService(email);

        employee.setDbr(dbr);
        employee.setMonthlyIncome(monthlyIncome);
        employee.setMonthlyExpense(monthlyExpense);
        employee.setMaxEligibleAmount(eligibleLoanAmount);

        LoanProduct loanProduct1 = new LoanProduct();
        loanProduct1.setTenure(tenure);
        loanProduct1.setRoi(roi);
        if(loanProduct.equals("Home Loan")){
            loanProduct1.setLoanProductCode("HL");
            loanProduct1.setLoanProductName("Home Loan");
            mp.addAttribute("loanProduct","Home Loan");
        }
        else if(loanProduct.equals("Vehicle Loan")){
            loanProduct1.setLoanProductCode("VL");
            loanProduct1.setLoanProductName("Vehicle Loan");
            mp.addAttribute("loanProduct","Vehicle Loan");
        }
        else{
            loanProduct1.setLoanProductCode("EL");
            loanProduct1.setLoanProductName("Education Loan");
            mp.addAttribute("loanProduct","Education Loan");
        }
        loanProduct1.setStatus("Pending");


        LoanAgreement loanAgreement = new LoanAgreement();
        loanAgreement.setLoanProduct(loanProduct1);
        loanAgreement.setLoanAmount(loanAmount);
/*        System.out.println(loanAmount);*/
        loanAgreement.setRepaymentFrequency(repaymentFrequency);
        loanAgreement.setTenure(tenure);
        loanAgreement.setRate(roi);
        loanAgreement.setLoanStatus("Pending");
        loanAgreement.setEmployee(employee);

        loanAgreement.calculateEMI();
        loanAgreement.generateRS();

        employee.getLoanAgreementList().add(loanAgreement);
        employeeService.updateEmployeeService(employee);
        int index = employeeService.searchEmployeeService(email).getLoanAgreementList().size()-1;
        System.out.println(index);
        System.out.println(loanAgreement.getLoanAgreementId());

        LoanAgreement loanAgreement1 = employee.getLoanAgreementList().get(index);

        System.out.println(loanAgreement1.getLoanAgreementId());
        mp.addAttribute("employee",employee);
        mp.addAttribute("loanAgreement",loanAgreement1);//1
        mp.addAttribute("repaySchedule",loanAgreement.getRepaymentSchedule());
        mp.addAttribute("dbr",dbr);

        return "loanapproval";
    }

    @JsonView(Views.Public.class)
    @ResponseBody
    @RequestMapping(value = "/calculateEligibleAmount",method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    public AjaxResponseBody calculateEligibleAmount(@RequestBody LoanReqData loanReqData){
        AjaxResponseBody result = new AjaxResponseBody();
        LoanCalculation loanCalculation = new LoanCalculation();
        double dbr = loanCalculation.calculateDBR(loanReqData.getMonthlyIncome(),loanReqData.getMonthlyExpense());
        double eligibleEmi = loanCalculation.calculateMaxEligibleEMI(loanReqData.getMonthlyIncome(),loanReqData.getMonthlyExpense());
        double maxEligibleLoanAmount = loanCalculation.calculateMaxEligibleLoanAmount(eligibleEmi,loanReqData.getRoi(),loanReqData.getTenure(),loanReqData.getRepaymentFrequency());
        maxEligibleLoanAmount = Math.round(maxEligibleLoanAmount*100)/100;
        result.setEligibleLoanAmount(maxEligibleLoanAmount);
        result.setDbr(dbr);
        return result;
    }


    @PostMapping("/loanApproval")
    public String proceedLoan(@RequestParam("email") String email, ModelMap mp){
        Employee employee = employeeService.searchEmployeeService(email);
        int index = employee.getLoanAgreementList().size()-1;
        LoanAgreement loanAgreement = employee.getLoanAgreementList().get(index);
        LoanProduct loanProduct = loanAgreement.getLoanProduct();
        loanProduct.setStatus("Approved");
        loanAgreement.setLoanStatus("Approved");
        loanAgreement.setLoanDisbursalDate(new Date());

        employeeService.updateEmployeeService(employee);
        mp.addAttribute("css","success");
        mp.addAttribute("head","Success!");
        mp.addAttribute("msg"," Loan Approved");
        return "index";
    }

    @GetMapping("/loanDetails")
    public String loanDetailsSearch(){
        return "loanDetailsSearch";
    }

    @PostMapping("/loanDetailsSearchForm")
    public String loanDetailsSearchForm(Model model, @RequestParam("searchEmail") String searchEmail){
        if(employeeService.emailExists(searchEmail)) {
            Employee employee = employeeService.searchEmployeeService(searchEmail);
            List<LoanAgreement> loanAgreementList = employee.getLoanAgreementList();
            model.addAttribute("loanList", loanAgreementList);
            model.addAttribute("email",searchEmail);
            return "loanDetailsView";
        }
        else{
            model.addAttribute("css","warning");
            model.addAttribute("head","Alert! ");
            model.addAttribute("msg","Employee doesn't exist.");
            return "loanDetailsSearch";
        }
    }

    @PostMapping("/loanDetailsSpecific")
    public String loanDetailsRepayment(@RequestParam("loanAgreement") long loanAgreement,@RequestParam("email") String searchEmail, ModelMap mp){
        LoanAgreement loanAgreement1 = employeeService.loanAgreementSearch(loanAgreement);
        mp.addAttribute("repaySchedule",loanAgreement1.getRepaymentSchedule());
        mp.addAttribute("email",searchEmail);
        return "repaySchedule";
    }
}
