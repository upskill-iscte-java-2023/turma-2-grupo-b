package plume.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;


@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {


    @Autowired
    UserAuthenticationProvider userAuthenticationProvider;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                    .csrf()
                    .disable()
                    .authorizeRequests()
                    .antMatchers("/css/**", "/images/**", "/js/**").permitAll()
                    .antMatchers("/index/**").permitAll()
                    .antMatchers("/auth/**").permitAll()
                    .antMatchers("/user/**").authenticated()

                .and()

                    .logout()
                    .logoutUrl("/auth/logout")
                    .logoutSuccessUrl("/index/")
                    .permitAll() // Allow anyone to access the logout URL
                    .logoutRequestMatcher(new AntPathRequestMatcher("/auth/logout", "POST")) // Specify the HTTP method
                    .clearAuthentication(true)
                    .deleteCookies("JSESSIONID");
    }

    @Override
    protected void configure(AuthenticationManagerBuilder manager) {
        manager.authenticationProvider(userAuthenticationProvider);
    }

}
