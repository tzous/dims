package abc.tzous4j.dims.service.impl;

import abc.tzous4j.dims.dao.TbuserMapper;
import abc.tzous4j.dims.model.Tbuser;
import abc.tzous4j.dims.service.ITbuserService;
import abc.tzous4j.utils.MD5Util;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.type.IntegerTypeHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by ZQ on 2016-05-20.
 */
@Service
public class TbuserServiceImpl implements ITbuserService {
    @Autowired
    private SqlSessionFactory sqlSessionFactory;

    public boolean AddUser(Tbuser tbuser) {
        boolean bret = false;
        SqlSession session = sqlSessionFactory.openSession();
        try {
            TbuserMapper tbuserDao = session.getMapper(TbuserMapper.class);
            tbuserDao.insert(tbuser);
            bret = true;
            session.commit();
        } catch (Exception e) {
            session.rollback();
        } finally {
            session.close();
        }
        return bret;
    }

    public boolean UpdateUser(Tbuser tbuser) {
        boolean bret = false;
        SqlSession session = sqlSessionFactory.openSession();
        try {
            TbuserMapper tbuserDao = session.getMapper(TbuserMapper.class);
            tbuserDao.updateByPrimaryKey(tbuser);
            bret = true;
            session.commit();
        } catch (Exception e) {
            session.rollback();
        } finally {
            session.close();
        }
        return bret;
    }

    public boolean DeleteUser(Tbuser tbuser) {
        boolean bret = false;
        SqlSession session = sqlSessionFactory.openSession();
        try {
            TbuserMapper tbuserDao = session.getMapper(TbuserMapper.class);
            tbuserDao.deleteByPrimaryKey(tbuser.getUname());
            bret = true;
            session.commit();
        } catch (Exception e) {
            session.rollback();
        } finally {
            session.close();
        }
        return bret;
    }

    public Tbuser FindUserByUname(String uname) {
        Tbuser tbuser = new Tbuser();
        boolean bret = false;
        SqlSession session = sqlSessionFactory.openSession();
        try {
            TbuserMapper tbuserDao = session.getMapper(TbuserMapper.class);
            tbuser = tbuserDao.selectByPrimaryKey(uname);
            if(tbuser != null)
                bret = true;
            session.commit();
        } catch (Exception e) {
            session.rollback();
        } finally {
            session.close();
        }
        if(bret)
            return tbuser;
        else
            return null;

    }



    public boolean ModiPasswd(String uname, String oldpass, String newpass) {
        boolean bret = false;
        SqlSession session = sqlSessionFactory.openSession();
        try {
            TbuserMapper tbuserDao = session.getMapper(TbuserMapper.class);
            Tbuser tbuser = tbuserDao.selectByPrimaryKey(uname);
            if(tbuser != null) {
                if(tbuser.getUpasswd().compareToIgnoreCase(MD5Util.MD5(oldpass)) == 0) {
                    tbuser.setUpasswd(MD5Util.MD5(newpass));
                    tbuserDao.updateByPrimaryKey(tbuser);
                    bret = true;
                }
            }
            session.commit();
        } catch (Exception e) {
            session.rollback();
        } finally {
            session.close();
        }

        return bret;
    }
}
