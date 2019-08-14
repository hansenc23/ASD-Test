package asd.model;

import java.io.Serializable;

public class User  implements Serializable{

    private String name;
    private String email;
    private String password;
    private String dob;
    private String favcol;

    public User() {
    }

    public User(String name, String email, String password, String dob, String favcol) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.dob = dob;
        this.favcol = favcol;
    }

    public boolean match(String email){
        return this.email.equalsIgnoreCase(email.trim());
    }
    
    public String getFavcol() {
        return favcol;
    }

    public void getFavcol(String favcol) {
        this.favcol = favcol;
    }
    
    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
