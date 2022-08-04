package com.zkteco.springboot.dao;

import java.util.List;

import com.zkteco.springboot.model.Device;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import lombok.experimental.PackagePrivate;

@Repository
public interface DeviceDAO extends JpaRepository<Device, Integer> 
{
	@Query("SELECT n FROM Device n WHERE n.deviceName =:device")
	public List<Device> findByName(@Param("device") String deviceName);
}
