package abc.tzous4j.dims.service.impl;

import abc.tzous4j.dims.dao.TbuserMapper;
import abc.tzous4j.dims.model.Tbuser;
import abc.tzous4j.dims.service.IAuthorService;
import abc.tzous4j.utils.MD5Util;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ZQ on 2016-05-06.
 */
@Service
public class AuthorServiceImpl implements
        IAuthorService {
    @Autowired
    private SqlSessionFactory sqlSessionFactory;

    public Tbuser CheckAuthor(String loginid, String passwd, int ip) {
        if(null == loginid || loginid.isEmpty() || null == passwd || passwd.isEmpty()) {
            return null;
        }
        Tbuser aduser = new Tbuser();
        boolean bret = false;
        SqlSession session = sqlSessionFactory.openSession();
        try {
            TbuserMapper aduserDao = session.getMapper(TbuserMapper.class);
            String md5passwd = MD5Util.MD5(passwd).toLowerCase();
 //System.out.printf(loginid + md5passwd + "\r\n");
            aduser = aduserDao.selectByPrimaryKey(loginid);
            if(aduser != null) {
            	 //System.out.printf(aduser.getUpasswd() + "\r\n");
                if(aduser.getUpasswd().compareToIgnoreCase(md5passwd) == 0) {
                    bret = true;
                }
            }
            session.commit();
        } catch (Exception e) {
            session.rollback();
        } finally {
            session.close();
        }
        if(bret)
            return aduser;
        else
            return null;
    }
}
