package dao;

public class test_dto {
	private int id;
    private String name;
    private String profile;
//생성자
    public test_dto(int id, String name, String profile){
        this.id = id;
        this.name = name;
        this.profile = profile;
    }
//getter, setter
    public int getID(){
        return id;
    }
    public String getName(){
        return name;
    }
    public String getProfile(){
        return profile;
    }
    public void setID(int id){
        this.id = id;
    }
    public void setName(String name){
        this.name = name;
    }
    public void setProfile(String profile){
        this.profile = profile;
    }
}
