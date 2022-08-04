package com.zkteco.springboot.service.impl;

import java.util.List;

import com.zkteco.springboot.dao.DeviceDAO;
import com.zkteco.springboot.model.Device;
import com.zkteco.springboot.service.DeviceService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DeviceServiceImpl implements DeviceService 
{
	@Autowired
	private DeviceDAO deviceDAO;
	
	

	public DeviceServiceImpl(DeviceDAO deviceDAO) 
	{
		super();
		this.deviceDAO = deviceDAO;
	}

	@Override
	public Device saveDevice(Device device) 
	{
		
		return deviceDAO.save(device);
			
	}

	@Override
	public Device getDevice(int id) 
	{
		Device device = deviceDAO.findById(id).orElse(new Device());
		if (device.isEntry()) {
			device.setEntryAlias("Enabled");
		} else {
			device.setEntryAlias("Disabled");
		}
		return device;
	}

	@Override
	public Device updateDevice(Device device) 
	{
		device = deviceDAO.findById(device.getId()).orElse(new Device());
		deviceDAO.deleteById(device.getId());
		return device;
	}

	@Override
	public Device deleteDevice(int id) 
	{
		Device device = deviceDAO.findById(id).orElse(new Device());
		deviceDAO.deleteById(id);
		return device;
	}

	@Override
	public List<Device> getAllDevice()
	{
		List<Device> deviceList = deviceDAO.findAll();
		System.out.println(deviceList);
		for(Device device:deviceList )
		{
			if (device.isEntry()) {
				device.setEntryAlias("Enabled");
			} else {
				device.setEntryAlias("Disabled");
			}
		}
		return deviceList;
	}

	@Override
	public List<Device> findByName(String deviceName) 
	{
		
		List<Device> deviceList = deviceDAO.findByName(deviceName);
		for(Device device:deviceList )
		{
			if (device.isEntry()) {
				device.setEntryAlias("Enabled");
			} else {
				device.setEntryAlias("Disabled");
			}
		}
		return deviceList;
	}
	
	
}
