package plume.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        if (!registry.hasMappingForPattern("/js/**")) {
            registry.addResourceHandler("/js/**")
                    .addResourceLocations("classpath:/static/js/");
        }

        if (!registry.hasMappingForPattern("/css/**")) {
            registry.addResourceHandler("/css/**")
                    .addResourceLocations("classpath:/static/css/");
        }

        if (!registry.hasMappingForPattern("/images/**")){
            registry.addResourceHandler("/images/**")
                    .addResourceLocations("classpath:/static/images/");
        }

        // Add other custom resource mappings as needed
    }
}

