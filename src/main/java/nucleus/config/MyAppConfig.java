package nucleus.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "nucleus")
public class MyAppConfig extends WebMvcConfigurerAdapter {
   @Bean
   public InternalResourceViewResolver viewResolver(){
       InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();

       viewResolver.setPrefix("main/webapp/WEB-INF/views/");
       viewResolver.setSuffix(".jsp");
       return viewResolver;
     }


    // goto bencrypt calculator site and convert the myth123
    @Bean
    PasswordEncoder getpasswordEncoder()
    {
        return NoOpPasswordEncoder.getInstance(); // plaintext implementation
       // return new BCryptPasswordEncoder();
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("main/webapp/resources/");
    }
}
