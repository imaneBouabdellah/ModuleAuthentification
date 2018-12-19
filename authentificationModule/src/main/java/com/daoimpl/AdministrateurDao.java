package com.daoimpl;

import java.util.Collection;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import com.bo.Administrateur;
import com.dao.IDAOAdmin;

import com.dao.AdministrateurRepository;
@Repository
public class AdministrateurDao implements IDAOAdmin{
	@Autowired
	private AdministrateurRepository administrateurRepository;
	
	@Override
	public Administrateur create(Administrateur object) {
		// TODO Auto-generated method stub
		return administrateurRepository.save(object);	
	}

	@Override
	public Collection<Administrateur> retreive() {
		// TODO Auto-generated method stub
		return administrateurRepository.findAll();
	}

	@Override
	public Administrateur update(Administrateur object) {
		// TODO Auto-generated method stub
		
		return administrateurRepository.save(object);
	}

	@Override
	public void delete(Administrateur object) {
		// TODO Auto-generated method stub
		administrateurRepository.delete(object);
		
	}

	@Override
	public Administrateur find(Long id) {
		// TODO Auto-generated method stub
		return administrateurRepository.findOne(id);
	}

	public AdministrateurRepository getAdministrateurRepository() {
		return administrateurRepository;
	}

	public void setAdministrateurRepository(AdministrateurRepository administrateurRepository) {
		this.administrateurRepository = administrateurRepository;
	}

	@Override
	public Page<Administrateur> chercherParMc(String mc, Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Administrateur checkEmail(String email) {
		// TODO Auto-generated method stub
		return administrateurRepository.checkEmail(email);
	}




	
}
