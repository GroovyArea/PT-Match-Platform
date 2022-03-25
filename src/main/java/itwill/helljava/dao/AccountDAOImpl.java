package itwill.helljava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import itwill.helljava.dto.Account;
import itwill.helljava.dto.Member;
import itwill.helljava.mapper.AccountMapper;

public class AccountDAOImpl implements AccountDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public int insertAcount(Member member) {
		return sqlSession.getMapper(AccountMapper.class).insertAcount(member);
	}

	@Override
	public int updateAccount(Member member) {
		return sqlSession.getMapper(AccountMapper.class).updateAccount(member);
	}

	@Override
	public int deleteAccount(int member_no) {
		return sqlSession.getMapper(AccountMapper.class).deleteAccount(member_no);
	}


	@Override
	public Account selectAccount(Member member) {
		return sqlSession.getMapper(AccountMapper.class).selectAccount(member);
	}

	@Override
	public List<Account> selectAccountList() {
		return sqlSession.getMapper(AccountMapper.class).selectAccountList();
	}

}
