package com.mc.mvc.mybatis.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;


// Mapper.xml과 Mapper Interface를 사용할 때 주의점
// 1. mapper.xml의 namespace와 Interface의 fullName은 같아야 한다.
// 2. mapper.xml과 Interface에 같은 이름의 query annotation
//	이 적용된 같은 이름의 메서드는 존재할 수 없다.

@Repository
public interface MybatisRepository {
//
//	@Select("select * from member where user_id = #{userId}")
//	Member selectOne(String userId);
//
//	@Select("select * from member")
//	List<Member> selectList();
//
//	@Select("select * from member where user_id = #{userId} " + "and password = #{password}")
//	List<Member> selectListWithDTO(Member member);
//
//	@Select("select * from member where user_id = #{userId} " + "and password = #{password}")
//	List<Member> selectListWithMap(Map<String, String> commandMap);
//
//	@Select("select * from member join rent_master using(user_id)")
//	List<Map<String, Object>> selectListToMap();
//
//	@Insert("insert into member(user_id, password, tell, email) " + "values(#{userId}, #{password}, #{tell}, #{email})")
//	int insertWithDTO(Member member);

//	@Insert("insert into rent_master(user_id, title, rent_book_cnt)"
//			+ " values(#{member.userId}, #{title}, #{rentBookCnt})")
//	int insertWithMap(Map<String, Object> commandMap);

	

//	@Update("update member set password = #{password} " + "where user_id = #{userId}")
//	int update(Member member);
//
//	@Delete("delete from member where user_id = #{userId}")
//	int delete(String userId);
//
//
//	int dynamicSet(Member member);

//	int dynamicForEach(Map<String, Object> commandMap);



}
