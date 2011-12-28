/* 
 * PersonServiceImpl.java
 * 
 * Copyright 2011-2012 the original author or authors.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *     http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.skydingo.skybase.service.impl;

import static org.springframework.util.Assert.notNull;

import java.util.List;

import javax.inject.Inject;

import org.skydingo.skybase.model.Person;
import org.skydingo.skybase.repository.PersonRepository;
import org.skydingo.skybase.service.PersonService;
import org.skydingo.skybase.util.CollectionsUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;

/**
 * @author Willie Wheeler (willie.wheeler@gmail.com)
 */
@Service
@Transactional
public class PersonServiceImpl implements PersonService {
	@Inject private PersonRepository personRepo;

	/* (non-Javadoc)
	 * @see org.skydingo.skybase.service.PersonService#createPerson(org.skydingo.skybase.model.Person)
	 */
	@Override
	public void createPerson(Person person) {
		notNull(person);
		personRepo.save(person);
	}

	/* (non-Javadoc)
	 * @see org.skydingo.skybase.service.PersonService#createPerson(org.skydingo.skybase.model.Person, org.springframework.validation.Errors)
	 */
	@Override
	public void createPerson(Person person, Errors errors) {
		if (!errors.hasErrors()) {
			createPerson(person);
		}
	}

	/* (non-Javadoc)
	 * @see org.skydingo.skybase.service.PersonService#findPeople()
	 */
	@Override
	public List<Person> findPeople() {
		return CollectionsUtil.asList(personRepo.findAll());
	}

	/* (non-Javadoc)
	 * @see org.skydingo.skybase.service.PersonService#findPerson(java.lang.Long)
	 */
	@Override
	public Person findPerson(Long id) {
		notNull(id);
		return personRepo.findOne(id);
	}

	/* (non-Javadoc)
	 * @see org.skydingo.skybase.service.PersonService#updatePerson(org.skydingo.skybase.model.Person)
	 */
	@Override
	public void updatePerson(Person person) {
		notNull(person);
		personRepo.save(person);
	}

	/* (non-Javadoc)
	 * @see org.skydingo.skybase.service.PersonService#updatePerson(org.skydingo.skybase.model.Person, org.springframework.validation.Errors)
	 */
	@Override
	public void updatePerson(Person person, Errors errors) {
		if (!errors.hasErrors()) {
			updatePerson(person);
		}
	}

	/* (non-Javadoc)
	 * @see org.skydingo.skybase.service.PersonService#deletePerson(java.lang.Long)
	 */
	@Override
	public void deletePerson(Long id) {
		personRepo.delete(id);
	}

}