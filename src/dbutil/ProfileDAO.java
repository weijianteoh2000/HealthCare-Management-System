package dbutil;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.model.Profile;

public class ProfileDAO {
JdbcTemplate jdbct = new JdbcTemplate((javax.sql.DataSource) getDataSource());
//the detail impl for all CRUD methods here

//getAll
public List<Profile> getAll(){
	String sql = "select * from Profile";
	List<Profile> iList = jdbct.query(sql, new BeanPropertyRowMapper<Profile>(Profile.class));
	return iList;
}
public Profile findById(int id) {
	String sql = "select * from Profile where id = ?";
	Profile inst = jdbct.queryForObject(sql, new BeanPropertyRowMapper<Profile>(Profile.class),id);
	return inst;
}
public Profile findByUP(String username, String password) {
	String sql = "select * from Profile where username = ? AND password = ?";
	Profile inst = jdbct.queryForObject(sql, new BeanPropertyRowMapper<Profile>(Profile.class),username,password);
	return inst;
}
//add
public int add(Profile inst) {
	String sql = "insert into Profile (name,username,email,password) values (?,?,?,?)";
	Object args[] = {inst.getName(),inst.getUsername(),inst.getEmail(),inst.getPassword()}; 
	int rowAffected = jdbct.update(sql, args);
	return rowAffected;
}

//update - complete this
public int update(Profile inst, int id) {
	String sql = "Update Profile SET name=?,username=?,email=?,password=? where id=?";
	Object args[] = {inst.getName(),inst.getUsername(),inst.getEmail(),inst.getPassword(),id}; 
	int rowAffected = jdbct.update(sql, args);
	return rowAffected;
}

//delete - complete this
public int delete(int id) {
	String sql = "Delete from Profile where id =?";
	Object args[] = {id};
	int rowAffected = jdbct.update(sql,args);
	return rowAffected;
}
public DataSource getDataSource() {
	DataSource ds =null;
	String dbURL = "jdbc:mysql://localhost:3306/healthera";
	String username = "root";
	String password ="";
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	}catch(ClassNotFoundException e) {
		
		e.printStackTrace();
	}
	ds = (DataSource) new DriverManagerDataSource(dbURL,username,password);
	return ds;
}
}
