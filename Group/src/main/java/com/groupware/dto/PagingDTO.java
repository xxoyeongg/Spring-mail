package com.groupware.dto;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PagingDTO {
	private int startPage;//����������
	private int endPage;//��������
	
	private boolean prev,next; //����,����
	
	private int total;//��
	
	private Criteria cri;//��û�� ������ ��ȣ,���������� �۰���

	
	public PagingDTO(Criteria cri,int total) {
		this.cri=cri;
		this.total=total;
		
	}
}
