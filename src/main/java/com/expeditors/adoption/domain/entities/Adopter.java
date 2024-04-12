package com.expeditors.adoption.domain.entities;

import com.expeditors.adoption.domain.Entity;
import com.expeditors.adoption.domain.annottations.PhoneNumberPattern;
import jakarta.validation.constraints.Size;

public class Adopter extends Entity {
    
    @Size(min = 2, message = "{validation.adopter.name.size.too_short}")
    @Size(max = 200, message = "{validation.adopter.name.size.too_long}")
    private String adopterName;

    @PhoneNumberPattern
    private String phoneNumber;

    public Adopter(
        int id,
        String adopterName, 
        String phoneNumber) {
        
            super(id);
            this.adopterName = adopterName;
            this.phoneNumber = phoneNumber;
    }

    public String getAdopterName() {
        return adopterName;
    }

    public void setAdopterName(String adopterName) {
        this.adopterName = adopterName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
}