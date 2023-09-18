package plume.entities;


import org.springframework.security.core.GrantedAuthority;

import javax.persistence.*;

@Entity
@Table(name="roles")
public class RoleModel implements GrantedAuthority {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name="role_id")
    private Integer roleId;

    private String authority;

    public RoleModel(){
        super();
    }

    public RoleModel(String authority){
        this.authority = authority;
    }

    public RoleModel(Integer roleId, String authority){
        this.roleId = roleId;
        this.authority = authority;
    }

    @Override
    public String getAuthority() {
        return this.authority;
    }

    public void setAuthority(String authority){
        this.authority = authority;
    }

    public Integer getRoleId(){
        return this.roleId;
    }

    public void setRoleId(Integer roleId){
        this.roleId = roleId;
    }
}
