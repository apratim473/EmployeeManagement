package nucleus.dao;

import nucleus.model.Employee;
import nucleus.model.LoanAgreement;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class EmployeeDao {
    @Autowired
    private SessionFactory sessionFactory;
    public SessionFactory getSessionFactory(){
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    public String addEmployee(Employee employee){
        sessionFactory.getCurrentSession().save(employee);
        return "Employee added successfully";
    }

    public Employee employeeReturn(String email){
        Session session = sessionFactory.openSession();//open
        Query hql = session.createQuery("from Employee e where e.email =: email",Employee.class);
        hql.setParameter("email",email);
        session.getSession().beginTransaction();
        Employee employee = (Employee) hql.uniqueResult();
        session.getTransaction().commit();//del
//      Employee employee = sessionFactory.getCurrentSession().get(Employee.class,email);
        return employee;

    }

    public String updateEmployee(Employee employee){
        sessionFactory.getCurrentSession().merge(employee);
        return "Employee updated successfully";
    }

    public String deleteEmployee(Employee employee){
        if(employee!=null){
            sessionFactory.getCurrentSession().delete(employee);
        }
        return "Employee Deleted Successfully!";
    }

    public boolean checkEmail(String email){
        Session session = sessionFactory.getCurrentSession();//open
        Query hql = session.createQuery("from Employee e where e.email =: email",Employee.class);
        hql.setParameter("email",email);
//        session.getSession().beginTransaction();
        Employee employee = (Employee) hql.uniqueResult();
        boolean exists = true;
        if(employee == null){
            exists = false;
        }
        return exists;
    }

    public boolean checkId(long proofId){
        Employee employee = sessionFactory.getCurrentSession().get(Employee.class,proofId);
        boolean exists = true;
        if(employee == null){
            exists = false;
        }
        return exists;
    }

    public LoanAgreement agreementReturn(long loanAgreementId){
/*        Session session = sessionFactory.openSession();
        Query hql = session.createQuery("from LoanAgreement e where e.email =: email",Employee.class);
        hql.setParameter("email",email);
        session.getSession().beginTransaction();
        Employee employee = (Employee) hql.uniqueResult();*/

        LoanAgreement loanAgreement = sessionFactory.getCurrentSession().get(LoanAgreement.class,loanAgreementId);
        return loanAgreement;

    }

}
