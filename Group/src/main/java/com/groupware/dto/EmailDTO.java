package com.groupware.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class EmailDTO {
	private int mailnum;//메일번호
	private int memnum;// 사원번호 -> 외래키
	private String sendermail; //발신자 이메일
	private String receivemail; //수신자 이메일
	private String title; //제목
	private String content; //내용
	private Date registerDate;//등록일
	private int readck; //읽음여부 체크 0안읽음 1읽음
	private int delck; //게시글 삭제 (-> 안보이게하는걸로) 0게시글 보이게 1 게시글 안보이게 
	
	
	
	//상대방이 게시글 읽었을경우 (1) -> delete 하지 않고 delck 1로 업데이트 해서 나에게만 안보이게
	//상대방이 게시글을 읽지 않았을경우 (0) ->db 완전히 삭제 
	//삭제 메일함 트리거로 구현 
	

	

}
