package plume.entities;


import jakarta.validation.constraints.NotBlank;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name="users")
public class ApplicationUser implements UserDetails{

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Integer userId;
    @Column(unique=true)
    @NotBlank(message = "Username is required")
    private String username;

    private String name;

    private boolean verified = false;

    @NotBlank(message = "Password is required")
    private String password;

    @ManyToMany(fetch=FetchType.EAGER)
    @JoinTable(
            name="user_role_junction",
            joinColumns = {@JoinColumn(name="user_id")},
            inverseJoinColumns = {@JoinColumn(name="role_id")}
    )
    private Set<RoleModel> authorities;

    @OneToMany(mappedBy = "user")
    private List<UserSightingModel> userSightingModels = new ArrayList<>();



    public ApplicationUser() {
        super();
        authorities = new HashSet<>();
    }


    public ApplicationUser(Integer userId, String username, String name, String password, Set<RoleModel> authorities) {
        super();
        this.userId = userId;
        this.username = username;
        this.name = name;
        this.password = password;
        this.authorities = authorities;
    }

    public Integer getUserId() {
        return this.userId;
    }

    public void setId(Integer userId) {
        this.userId = userId;
    }

    public void setAuthorities(Set<RoleModel> authorities) {
        this.authorities = authorities;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        // TODO Auto-generated method stub
        return this.authorities;
    }

    @Override
    public String getPassword() {
        // TODO Auto-generated method stub
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String getUsername() {
        return this.username;
    }

    public String getName(){
        return this.name;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    /* If you want account locking capabilities create variables and ways to set them for the methods below */
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    public List<UserSightingModel> getUserSightingModels() {
        return userSightingModels;
    }

    public void setUserSightingModels(List<UserSightingModel> userSightingModels) {
        this.userSightingModels = userSightingModels;
    }

    public boolean isVerified() {
        return verified;
    }

    public void setVerified(boolean verified) {
        this.verified = verified;
    }
}
