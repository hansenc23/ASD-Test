
package asd.model;
import java.io.Serializable;

/**
 *
 * @author hansen
 */


public class User  implements Serializable{

    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String address;
    private String phoneNumber;
    private String position;
    private String isStaff;

    public User() {
    }

    public User(String firstName, String lastName, String email, String password, String address, String phoneNumber, String isStaff) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.isStaff = isStaff;
    }
    
    public User(String firstName, String lastName, String email, String password, String address, String phoneNumber, String isStaff, String position) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.isStaff = isStaff;
        this.position = position;
    }

    public boolean match(String email){
        return this.email.equalsIgnoreCase(email.trim());
    }
    
    public String getPosition(){
        return position;
    }
    
    public void getPosition(String position){
        this.position = position;
    }
    
    public String getIsStaff(){
        return isStaff;
    }
    
    public void setIsStaff(String isStaff){
        this.isStaff = isStaff;
    }
    
    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void getPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
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
