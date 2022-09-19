<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>    
    
<style>

	/* 공지사항 입력 css 외부에서 받아온 것 */ 
	#ntUpdate input[type=text], #ntUpdate select, #ntUpdate textarea {
		width: 100%;
		padding: 12px;
		border: 1px solid #ccc;
		border-radius: 4px;
		box-sizing: border-box;
		margin-top: 6px;
		margin-bottom: 16px;
		resize: vertical;
	}

	.updateBtns  {
		width: 80px; 
		margin: 15px; 
		border-style: none; 
		height: 30px;
		font-size: 14px;
	}
	
	.btn-secondary:hover {
		border: 2px none #1E7F15;
		background-color: #1E7F15;
	    color: white;
	}
	
</style>       
    
<div class="container">

	<div class="titleZone row">
      <h2 class="col text-left" style="font-weight:bold">공지사항</h2><br>
      <div class="col text-right">
         <span style="font-weight: bold; font-size: 20px;">02-336-8546</span><br>
         <span style="font-weight: normal; font-size: 15.5px;">평일 09:30 ~ 18:00 (점심시간 12:30 ~ 13:30)<br>주말 및 공휴일 휴무</span>
       </div>
    </div>
    <hr style="background-color: black; height: 1.2px;"><br>
   
    <h5 style="font-weight: bold;">게시글 수정하기</h5>
    <hr>
   
   
    <form action="" name="ntUpdate" id="ntUpdate">
		<label for="title">제목<span class="text-danger">*</span></label>
		<input type="text" id="title" name="title" placeholder="제목을 입력하세요.">
		
		<label for="content">내용<span class="text-danger">*</span></label>
		<textarea id="content" name="content" placeholder="문의 내용을 입력하세요." style="height:200px"></textarea>
		
		<label for="photo" style="margin: 6px 20px 16px 0;">사진 첨부</label><input type="file" id="photo" name="photo">
		<br>
		
		<hr>
		
		<div class="text-right" style="margin-top: 30px;">
		   <input type="button" class="updateBtns" value="수정" style="margin-right: 0" />&nbsp;
		   <input type="button" class="btn-secondary updateBtns" value="삭제" style="margin-left: 5px;" />
		</div>
	</form>
	
</div>

<%@ include file="../footer.jsp"%>