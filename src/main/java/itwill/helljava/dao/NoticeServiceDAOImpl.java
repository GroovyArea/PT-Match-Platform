package itwill.helljava.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import itwill.helljava.dto.NoticeService;
import itwill.helljava.mapper.NoticeServiceMapper;

@Repository
public class NoticeServiceDAOImpl implements NoticeServiceDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertNoticeService(NoticeService noticeService) {
		return sqlSession.getMapper(NoticeServiceMapper.class).insertNoticeService(noticeService);
	}

	@Override
	public int updateNoticeService(NoticeService noticeService) {
		return sqlSession.getMapper(NoticeServiceMapper.class).updateNoticeService(noticeService);
	}

	@Override
	public int updateReplyNoticeService(NoticeService noticeService) {
		return sqlSession.getMapper(NoticeServiceMapper.class).updateReplyNoticeService(noticeService);
	}

	@Override
	public int selectNoticeServiceCount(int notice_service_sortation) {
		return sqlSession.getMapper(NoticeServiceMapper.class).selectNoticeServiceCount(notice_service_sortation);
	}


	@Override
	public int selectNoticeServicePersonalCount(int notice_service_sortation, int member_no) {
		return sqlSession.getMapper(NoticeServiceMapper.class).selectNoticeServicePersonalCount(notice_service_sortation, member_no);
	}

	@Override
	public NoticeService selectNoticeService(int notice_service_no) {
		return sqlSession.getMapper(NoticeServiceMapper.class).selectNoticeService(notice_service_no);
	}

	@Override
	public List<NoticeService> selectNoticeServiceList(Map<String, Object> map1, int notice_service_sortation) {
		return sqlSession.getMapper(NoticeServiceMapper.class).selectNoticeServiceList(map1, notice_service_sortation);
	}

	@Override
	public List<NoticeService> selectNoticeServicePersonalList(Map<String, Object> map1, int notice_service_sortation,
			int member_no) {
		return sqlSession.getMapper(NoticeServiceMapper.class).selectNoticeServicePersonalList(map1, notice_service_sortation, member_no);
	}

}
