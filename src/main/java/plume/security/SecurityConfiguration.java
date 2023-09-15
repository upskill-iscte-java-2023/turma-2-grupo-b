package plume.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.ProviderManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;


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
                .formLogin()
                .loginPage("/auth/login")
                .loginProcessingUrl("/auth/login-attempt")
                .defaultSuccessUrl("/user/dashboard")
                .and()
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
                .logoutSuccessUrl("/index/");
    }

    @Override
    protected void configure(AuthenticationManagerBuilder manager) {
        manager.authenticationProvider(userAuthenticationProvider);
    }

}
