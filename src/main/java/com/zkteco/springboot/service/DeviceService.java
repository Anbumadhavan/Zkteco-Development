package com.zkteco.springboot.service;

import java.util.List;

import com.zkteco.springboot.model.Device;

public interface DeviceService 
{
	Device saveDevice(Device device);
	
	Device getDevice(int id);
	
	Device updateDevice(Device device);
	
	Device deleteDevice(int id);
	
	List<Device> getAllDevice();
	
	List<Device> findByName(String deviceName);
}
