// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.petclinic.web;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import org.springframework.roo.petclinic.domain.Pet;
import org.springframework.roo.petclinic.domain.Vet;
import org.springframework.roo.petclinic.web.PetDeserializer;
import org.springframework.roo.petclinic.web.VetDeserializer;
import org.springframework.roo.petclinic.web.VisitJsonMixin;

privileged aspect VisitJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     */
    @JsonDeserialize(using = PetDeserializer.class)
    private Pet VisitJsonMixin.pet;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    @JsonDeserialize(using = VetDeserializer.class)
    private Vet VisitJsonMixin.vet;
    
}
