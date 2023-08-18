package kr.spring.member.service;

import java.util.List;
import java.util.Map;

import kr.spring.member.vo.CompanyDetailVO;
import kr.spring.member.vo.MemberVO;

public interface MemberService {
	//회원가입 - 일반
	public void insertMember(MemberVO member);
	public void insertCompany(MemberVO member);
	
	//ID를 이용한 회원정보 체크
	public MemberVO selectCheckMember(String id);
	public MemberVO selectCheckMemberNk(String nickname);
	
	//회원번호를 이용한 회원정보 구하기
	public MemberVO selectMember(Integer mem_num);
	public MemberVO selectCompany(Integer mem_num);
	
	public CompanyDetailVO selectCompanyDetail(String comp_num); 
	
	//회원정보 수정 
	public void updateMember(MemberVO member);
	public void updateCompany(MemberVO member);
	public void updateMemberNk(MemberVO member);
	
	//프로필 이미지 업데이트
	public void updateProfile(MemberVO member);
	public void updateComProfile(MemberVO member);
	
	//비밀번호 수정 
	public void updatePasswd(MemberVO member);
	
	//회원탈퇴
	public void deleteMember(Integer mem_num);
	public void deleteCompany(Integer mem_num);
	
	//자동 로그인
	public void updateAu_id(String au_id, int mem_num);
	public MemberVO selectAu_id(String au_id);
	public void deleteAu_id(int mem_num);
	
	/*==============
	 *   관리자
	 *==============*/
	//회원가입 - 관리자
	public int selectRowCount(Map<String,Object> map);
	public List<MemberVO> selectList(Map<String,Object> map);
	public void updateByAdmin(MemberVO memberVO);
	
	//아이디 찾기
	public MemberVO findMemberId(String mem_name, String mem_phone);
	public MemberVO findCompanyId(String comp_owner, String comp_phone);
	//비밀번호 찾기
	public MemberVO findMemberPw(String mem_id, String mem_name, String mem_phone, String mem_email);
	public MemberVO findCompanyPw(String mem_id, String comp_owner, String comp_phone, String comp_email);
	public void changePw(int mem_num, String new_passwd);
}
