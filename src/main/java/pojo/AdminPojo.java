package pojo;

import javax.persistence.*;

@Entity
@Table(name = "admin")
public class AdminPojo {
    
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

    private String email;

    private String password;

    public AdminPojo(String email, String password) {
		this.email = email;
		this.password = password;
	}
    
    public AdminPojo() {
    	
    }
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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
