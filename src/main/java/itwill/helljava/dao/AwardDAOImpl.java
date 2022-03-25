package itwill.helljava.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import itwill.helljava.dto.Award;
import itwill.helljava.mapper.AwardMapper;

public class AwardDAOImpl implements AwardDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public int insertAward(Award award) {
		return sqlSession.getMapper(AwardMapper.class).insertAward(award);
	}

	@Override
	public int updateAward(Award award) {
		return sqlSession.getMapper(AwardMapper.class).updateAward(award);
	}

	@Override
	public int deleteAward(int award_no) {
		return sqlSession.getMapper(AwardMapper.class).deleteAward(award_no);
	}

	@Override
	public Award selectAward(int award_no) {
		return sqlSession.getMapper(AwardMapper.class).selectAward(award_no);
	}

	@Override
	public List<Award> selectAwardList() {
		return sqlSession.getMapper(AwardMapper.class).selectAwardList();
	}

}
