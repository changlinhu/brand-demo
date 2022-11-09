package com.changlin.service;

import com.changlin.mapper.BrandMapper;
import com.changlin.pojo.Brand;
import com.changlin.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class BrandService {

    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    /**
     * selectAll
     * @return
     */

    public List<Brand> selectAll(){
        // 调用BrandMapper.selectAll()


        SqlSession sqlSession = factory.openSession();
        BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);

        List<Brand> brands = mapper.selectAll();

        sqlSession.close();
        return brands;
    }
}
