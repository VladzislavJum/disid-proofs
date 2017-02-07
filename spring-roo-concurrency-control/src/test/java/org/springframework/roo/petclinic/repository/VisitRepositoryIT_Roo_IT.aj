// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.petclinic.repository;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.roo.petclinic.dod.VisitDataOnDemand;
import org.springframework.roo.petclinic.repository.VisitRepository;
import org.springframework.roo.petclinic.repository.VisitRepositoryIT;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

privileged aspect VisitRepositoryIT_Roo_IT {
    
    declare @type: VisitRepositoryIT: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: VisitRepositoryIT: @ActiveProfiles("dev");
    
    declare @type: VisitRepositoryIT: @WebAppConfiguration;
    
    declare @type: VisitRepositoryIT: @SpringBootTest;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    VisitDataOnDemand VisitRepositoryIT.dod;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Autowired
    VisitRepository VisitRepositoryIT.visitRepository;
    
    /**
     * This method will be automatically executed after each test method for freeing resources allocated with @Before annotated method.
     * 
     */
    @After
    public void VisitRepositoryIT.clean() {
        
        // Clean needed after executing each test method
        // To be implemented by developer
        
    }
    
    /**
     * This method will be automatically executed before each test method for configuring needed resources.
     * 
     */
    @Before
    public void VisitRepositoryIT.setup() {
        
        dod = new VisitDataOnDemand(visitRepository);
        
        // Setup needed before executing each test method
        // To be implemented by developer
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void VisitRepositoryIT.testFindByVet() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void VisitRepositoryIT.testFindByPet() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void VisitRepositoryIT.testFindAll() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void VisitRepositoryIT.testCountByVet() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void VisitRepositoryIT.testCountByPet() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void VisitRepositoryIT.testFindByDescriptionAndVisitDate() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void VisitRepositoryIT.testCountByDescriptionAndVisitDate() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void VisitRepositoryIT.testFindByVisitDateBetween() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void VisitRepositoryIT.testCountByVisitDateBetween() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void VisitRepositoryIT.testFindByDescriptionLike() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void VisitRepositoryIT.testCountByDescriptionLike() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
}
