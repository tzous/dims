package abc.tzous4j.dims.service;

import abc.tzous4j.dims.model.Tbuser;

import java.util.List;

/**
 * Created by ZQ on 2016-05-06.
 */
public interface ITbuserService {
    public boolean AddUser(Tbuser tbuser);
    public boolean UpdateUser(Tbuser tbuser);
    public boolean DeleteUser(Tbuser tbuser);
    public Tbuser FindUserByUname(String uname);
    public boolean ModiPasswd(String uname,String oldpass,String newpass);
}
