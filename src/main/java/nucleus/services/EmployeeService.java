package nucleus.services;

import nucleus.dao.EmployeeDao;
import nucleus.model.Employee;
import nucleus.model.LoanAgreement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class EmployeeService {

    @Autowired
    EmployeeDao employeeDao;

    @Transactional
    public String addEmployeeService(Employee employee){
        return this.employeeDao.addEmployee(employee);
    }

    @Transactional
    public Employee searchEmployeeService(String email){
        return this.employeeDao.employeeReturn(email);
    }

    @Transactional
    public String updateEmployeeService(Employee employee){
        return employeeDao.updateEmployee(employee);
    }

    @Transactional
    public String deleteEmployeeService(Employee employee){
        return employeeDao.deleteEmployee(employee);
    }

    @Transactional
    public boolean emailExists(String email){
        return employeeDao.checkEmail(email);
    }

    @Transactional
    public boolean idExists(long proofId){ return employeeDao.checkId(proofId);}

    @Transactional
    public LoanAgreement loanAgreementSearch(long loanAgreementId){
         return employeeDao.agreementReturn(loanAgreementId);
    }
}

