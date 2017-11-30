package net.kzn.shoppingbackend.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import net.kzn.shoppingbackend.dao.ContactDAO;
import net.kzn.shoppingbackend.dto.ContactUs;

@Repository("contactDAO")
@Transactional
public class ContactDAOImpl implements ContactDAO{

	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean addContact(ContactUs contactDAO) {
		
		sessionFactory.getCurrentSession().persist(contactDAO);
		
		return false;
	}

}
