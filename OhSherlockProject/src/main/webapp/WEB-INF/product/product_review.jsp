<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>




<script type="text/javascript">

	$(document).ready(function (e) {

		// 제목 클릭 시 상품 상세 열어주는 함수(수정필요)
		$(".viewhidden").click(function () {
            status = $(".hidden").css("display"); 
            if (status == "none") {
                $(".hidden").css("display", "");
            } else {
                $(".hidden").css("display", "none");
            }
        });
	
	});
	

</script>

<style>

	#review_page a {
		text-decoration: none;
		color: black;
	}
	
	#review_page a:link, .footer a:visited {
		color: black;
	}
	
	#review_page .btnEditDel {
		border:none;
	}
	
	#review_page .vertical_bottom {
		vertical-align: bottom;
	}

</style>


<div id="review_page">
	<table class="table mt-4" style="text-align: center;"> 
		<thead class="thead-light"> 
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>평점</th>
			</tr>
		</thead> 
		
		<tbody>
			<c:if test="${not empty reviewList}">
				<c:forEach var="review" items="${requestScope.reviewList}"> 
					<tr class="reviewInfo">
						<td name="rnum">${review.rnum}</td>
						<td name="rsubject">${review.rsubject}</td>
						<td name="fk_userid">${review.fk_userid}</td>
						<td name="writedate">${review.writedate}</td>
						<td name="score">${review.score}</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${empty reviewList}">
				<tr>
					<td class="pt-5" colspan="4">
						작성된 리뷰가 없습니다.
					</td>
				</tr>
				
			</c:if>

		</tbody>
		
		
	</table>
	
	<div class="row justify-content-end" style="margin-top:50px;">
		<span><input class="btnEditDel mr-4" type="button" value="상품후기작성" data-toggle="modal" data-target="#btnReview" data-dismiss="modal" data-backdrop="static"/></span>
		<span><input class="btnEditDel mr-4" type="button" value="전체상품 후기조회" id="btnAllReview"/></span>
	</div>

	<nav aria-label="Page navigation example" style="margin-top: 60px;">
		<ul class="pagination justify-content-center" style="margin:auto;">${requestScope.pageBar}</ul>
	</nav>
	
</div>




<%-- *** 리뷰작성 모달창 *** --%>
<div class="modal fade" id="btnReview">
	<div class="modal-dialog ">
    	<div class="modal-content">
    
	      	<!-- Modal header -->
	      	<div class="modal-header">
	        	<h4 class="modal-title">상품 후기 작성</h4>
	        	<button type="button" class="close idFindClose" data-dismiss="modal">&times;</button>
	      	</div>
	      
	      	<!-- Modal body -->
	      	<div class="modal-body">
	        	<div id="reviewWrite">
	        	<%-- jsp 파일 연결을 위해서 iframe 을 사용하지 않고, 우선 include로 연결해 두었다. --%>
	        	<%--	<iframe id="iframe_reviewWrite" style="border: none; width: 100%; height: 350px;" src="<%= request.getContextPath()%>/login/idFind.up"> </iframe>---%>
             		<%@ include file="modal_review_write.jsp"%>
	        	</div>
	      	</div>
	      
	      	<!-- Modal footer -->
	      	<div class="modal-footer">
	        	<button type="button" class="btn btn-light idFindClose" data-dismiss="modal">Close</button>
	        	<%-- close나 엑스 버튼을 누르면 아이디 찾기에 입력해 놓은 값을 날려주기 
	        		 close와 엑스버튼을 한번에 잡으려고 클래스를 idFindClose 로 동일하게 부여--%>
	      	</div>
	      	
		</div>
	</div>
</div>
