package com.dao;


import com.bo.Administrateur;

public interface IDAOAdmin  extends IDAO<Administrateur>{
	public Administrateur checkEmail(String email);
}
