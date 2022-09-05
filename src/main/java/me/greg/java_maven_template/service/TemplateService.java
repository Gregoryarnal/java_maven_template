package me.dcal.java_maven_template.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.dcal.java_maven_template.Factory;


@Service
public class TemplateService {

	@Autowired
	Factory factory;
	

}
