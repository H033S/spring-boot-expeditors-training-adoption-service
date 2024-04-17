package com.expeditors.adoption.dao.inmemory.implementation;

import com.expeditors.adoption.dao.inmemory.InMemoryAbstractCrudDAO;
import com.expeditors.adoption.domain.entities.Pet;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Repository;

import static com.expeditors.adoption.dao.utils.profiles.Profiles.IN_MEMORY;

@Repository
@Profile(IN_MEMORY)
public class InMemoryPetDAO extends InMemoryAbstractCrudDAO<Pet> {
}
