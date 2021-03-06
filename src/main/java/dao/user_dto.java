package dao;

public class user_dto {
	private int num;
	private String id;
	private String password;
    private String name;
    private String nickname;
    private String email;
    private int admin;
//생성자
    public user_dto(int num, String id, String password, String name, String nickname, String email, int admin){
    	this.num = num;
        this.id = id;
        this.password = password;
        this.name = name;
        this.nickname = nickname;
        this.email = email;
        this.admin = admin;
    }
    public user_dto() {
    	this.num = 0;
        this.id = "";
        this.password = "";
        this.name = "";
        this.nickname = "";
        this.email = "";
        this.admin = 0;
    }
//getter, setter
    public int getNum() {
    	return num;
    }
    public String getID() {
        return id;
    }
    public String getPassword(){
        return password;
    }
    public String getName(){
        return name;
    }
    public String getNickname(){
        return nickname;
    }
    public String getEmail(){
        return email;
    }
    public int getAdmin() {
    	return admin;
    }
    public void setID(String id){
        this.id = id;
    }
    public void setPassword(String password) {
    	this.password = password;
    }
    public void setName(String name){
        this.name = name;
    }
    public void setNickname(String nickname){
        this.nickname = nickname;
    }
    public void setEmail(String email){
        this.email = email;
    }
    public void setAdmin(int admin) {
    	this.admin = admin;
    }
}
