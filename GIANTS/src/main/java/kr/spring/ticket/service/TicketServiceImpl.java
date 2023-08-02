package kr.spring.ticket.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.spring.ticket.dao.TicketMapper;
import kr.spring.ticket.vo.GameVO;
import kr.spring.ticket.vo.GradeVO;
import kr.spring.ticket.vo.SeatVO;

@Service
@Transactional
public class TicketServiceImpl implements TicketService {
	@Autowired
	TicketMapper ticketMapper;
	
	/* GRADE */
	@Override
	public void insertGrade(GradeVO gradeVO) { ticketMapper.insertGrade(gradeVO); }
	
	@Override
	public int selectGradeCount(GradeVO gradeVO) { return ticketMapper.selectGradeCount(gradeVO); }

	@Override
	public List<GradeVO> selectGradeList(GradeVO gradeVO) { return ticketMapper.selectGradeList(gradeVO); }
	
	@Override
	public GradeVO selectGrade(Integer grade_num) { return ticketMapper.selectGrade(grade_num); }
	
	/* SEAT */
	@Override
	public void insertSeat(SeatVO seatVO) {}
	
	/* GAME */
	@Override
	public void insertGame(GameVO gameVO) { ticketMapper.insertGame(gameVO); }

	@Override
	public int selectRowCount(GameVO gameVO) { return ticketMapper.selectRowCount(gameVO); }

	@Override
	public List<GameVO> selectTicketGameList(GameVO gameVO) { return ticketMapper.selectTicketGameList(gameVO); }

	@Override
	public GameVO selectGame(Integer game_num) { return ticketMapper.selectGame(game_num); }

	@Override
	public void updateGame(GameVO gameVO) { ticketMapper.updateGame(gameVO); }
}
 