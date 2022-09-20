<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>    
        
<style>

	* {box-sizing: border-box;}
	
	.page-link {
	  color: #666666; 
	  background-color: #fff;
	  border: 1px solid #ccc; 
	}
	
	.page-item.active .page-link {
	 z-index: 1;
	 color: #1E7F15;
	 border-color: #1E7F15;
	 
	}
	
	.page-link:focus, .page-link:hover {
	  color: #1E7F15;
	  background-color: #fafafa; 
	  border-color: #1E7F15;
	}

	.badge {
		background-color: #1E7F15; 
		color: white; 
		font-weight: bold;
	}
	
	.btn-secondary {
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
	
	/* 기간 탭 기본 css 시작 */
	#btnClass .tablink {
		background-color: white;
		color: black;
		float: left;
		border: none;
		outline: none;
		cursor: pointer;
		padding: 14px 0px;
		font-size: 17px;
		width: 11%;
	}
	
	#btnClass .tablink:hover {
		background-color: #e9ecef;
		
	}
</style>       
    

	<div class="container" id="inquiry">

	<div class="titleZone row">
		<h2 class="col text-left" style="font-weight: bold">1:1문의</h2>
		<br>
		<div class="col text-right">
			<span style="font-weight: bold; font-size: 20px;">02-336-8546</span><br>
			<span style="font-weight: normal; font-size: 15.5px;">평일 09:30
				~ 18:00 (점심시간 12:30 ~ 13:30)<br>주말 및 공휴일 휴무
			</span>
		</div>
	</div>
	
	<hr style="background-color: black; height: 1.2px;">
	<h5 style="font-weight: bold;">내 상담 내역</h5>
	
	
	<%-- 탭 버튼 --%>
	 <div class="row bg-light" style="height: 80px; margin-top: 55px; width: 99.8%; margin-left: 0;">
	    <div class="btn-group" role="group" aria-label="Basic example" style="float: left;">
		  <button type="button" class="btn btn-light" style="padding-left: 130px;">1개월</button>
		  <span class="btn btn-light" style="color: gray; margin-top: 20px;">|</span>
		  <button type="button" class="btn btn-light">3개월</button>
		  <span class="btn btn-light" style="color: gray; margin-top: 20px;">|</span>
		  <button type="button" class="btn btn-light">6개월</button>
		  <span class="btn btn-light" style="color: gray; margin-top: 20px;">|</span>
		  <button type="button" class="btn btn-light" style="padding-right: 50px;">12개월</button>
		</div>
	    
	    <div class="date" style="float: left; margin-top: 25px;">
			<input class="fText hasDatepicker" readonly="readonly" size="15" value="2022-08-17" type="text" style="margin-left: 30px; text-align: center;"><button type="button" class="ui-datepicker-trigger" ><img src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif" alt="..." title="..."></button>
			<span class="bar">~</span>
			<input class="fText hasDatepicker" readonly="readonly" size="15" value="2022-09-16" type="text" style="text-align: center;"><button type="button" class="ui-datepicker-trigger" ><img src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif" alt="..." title="..."></button>				
			<input type="button" value="조회" style="margin-left: 10px; width: 80px;"/>
		</div>
	</div>
	
	<br>
	<div style="margin-top: 10px;">총 4건의 상담 내역이 있습니다.</div>
<table class="table mt-2 text-center">
			<thead class="thead-light">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="class=storeNo">4</td>
					<td>쿠폰 사용 문의</td>
					<td>2022.09.02</td>
				</tr>
				<tr>
					<td style="class=storeNo">3</td>
					<td>배송 기간 문의</td>
					<td>2022.04.12</td>
				</tr>
				<tr>
					<td style="class=storeNo">2</td>
					<td>주소지 변경 문의&nbsp;&nbsp;<span class="badge badge-pill">답변완료</span></td>
					<td>2022.03.17</td>
				</tr>
				<tr>
					<td style="class=storeNo">1</td>
					<td>나문희&nbsp;&nbsp;<span class="badge badge-pill">답변완료</span></td>
					<td>2022.03.10</td>
				</tr>
			</tbody>
		</table>
			

	<nav aria-label="Page navigation example" style="margin-top: 60px;">
		<ul class="pagination justify-content-center">
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
	
	<div class="text-right" id="detail" style="display: block; margin-top: 15px;">
	  <input type="button" class="btn-secondary" value="문의남기기" />
    </div>
	
	

</div>

<%@ include file="../footer.jsp"%>