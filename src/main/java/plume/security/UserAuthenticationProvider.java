package plume.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;
import plume.Exceptions.InvalidLoginException;
import plume.Exceptions.NotVerifiedException;
import plume.entities.ApplicationUser;
import plume.services.AuthService;

import java.util.ArrayList;
import java.util.List;

@Component
public class UserAuthenticationProvider implements AuthenticationProvider {
    @Autowired
    AuthService authService;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        ApplicationUser user = null;

        try {
            user = authService.validateLogin((String)authentication.getPrincipal(), (String)authentication.getCredentials());
        } catch (InvalidLoginException | NotVerifiedException e) {
            return null;
        }

        if(user != null) {
            List<GrantedAuthority> permissions = new ArrayList<>();
            permissions.add((GrantedAuthority) () -> "ROLE_USER");
            return new UsernamePasswordAuthenticationToken(
                    user.getUsername(),
                    user.getPassword(),
                    permissions
                );
        }
        return null;
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.equals(UsernamePasswordAuthenticationToken.class);
    }
}
