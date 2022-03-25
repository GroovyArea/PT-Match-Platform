package itwill.helljava.mapper;

import java.util.List;

import itwill.helljava.dto.Account;
import itwill.helljava.dto.Member;

public interface AccountMapper {

	int insertAcount(Member member);

	int deleteAccount(int member_no);

	int updateAccount(Member member);

	Account selectAccount(Member member);

	List<Account> selectAccountList();
}
