package me.greg.java_maven_template;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import me.greg.java_maven_template.propertie.FileStorageProperties;

@SpringBootApplication
@EnableConfigurationProperties({
    FileStorageProperties.class
})
public class JavaProjectTemplate {

	public static void main(String[] args) {
		SpringApplication.run(JavaProjectTemplate.class, args);
	}

}
