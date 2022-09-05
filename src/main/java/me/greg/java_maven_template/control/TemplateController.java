package me.dcal.java_maven_template.control;

import org.springframework.web.bind.annotation.RestController;

import me.dcal.java_maven_template.service.TemplateService;


@RestController
public class TemplateController {

	TemplateService templateService;

}
