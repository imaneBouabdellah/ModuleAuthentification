package com.service;


import com.dto.AdministrateurDto;


public interface IAdminService extends IService<AdministrateurDto>{
	public AdministrateurDto checkEmail(String email);
}
