package com.zkteco.springboot.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import com.zkteco.springboot.dao.DeviceDAO;
import com.zkteco.springboot.model.Device;
import com.zkteco.springboot.service.DeviceService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DeviceController 
{
	@Autowired
	DeviceDAO deviceDAO;
	
	@Autowired
	DeviceService deviceService;
	
	
	//http://localhost:8080/Index
	
	//INDEX
	@RequestMapping("Index")
	public String device()
	{
		
		return "Index.jsp";
	}
	
	//ADD DEVICE
	@RequestMapping("addDevice")
	public String addDevice(@Valid Device device)
	{
		deviceService.saveDevice(device);
		return "/showDevice";
	}
	
	//DELETE DEVICE
	@RequestMapping("delDevice")
	public ModelAndView delDevice(@RequestParam int id)
	{
		ModelAndView mav = new ModelAndView("delDevice.jsp");
		Device device = deviceService.deleteDevice(id);
		mav.addObject(device);
		return mav;
	}
	
	//UPDATE DEVICE
	@RequestMapping("updateDevice")
	public ModelAndView updateDevice(Device device)
	{
		ModelAndView mav = new ModelAndView("updateDevice.jsp");
		device = deviceService.updateDevice(device);
		mav.addObject(device);
		return mav;
	}
	
	//GET DEVICE BY ID
	@RequestMapping("getDevice")
	public ModelAndView getUser(@RequestParam int id )
	{
		ModelAndView mav = new ModelAndView("getDevice.jsp");
		Device device =deviceService.getDevice(id);
		mav.addObject(device);
		return mav;
	}
	
	//SHOW ALL DEVICE
	@RequestMapping("/showDevice")
    public ModelAndView showDevice() 
	{
		ModelAndView mav = new ModelAndView("showDevice.jsp");
		
		List<Device> deviceList = deviceService.getAllDevice();
        mav.addObject(deviceList);
        return mav;
    }
	
	//GET DEVICE BY NAME
	@GetMapping("getDeviceName")
	public ModelAndView getDeviceName(@RequestParam  String deviceName)
	{
		ModelAndView mav = new ModelAndView("GetDeviceName.jsp");
		
		List<Device> deviceList = deviceService.findByName(deviceName);
		
		mav.addObject(deviceList);
		return mav;
		
	}
		
}
