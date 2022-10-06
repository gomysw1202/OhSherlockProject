<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<style>
.productListContainer div.content {
	margin-left: 200px;
	padding: 1px 16px;
	height: 1000px;
}

.productListContainer a:link, .productListContainer a:visited {
	color: black;
}

.productListContainer a:hover {
	cursor: pointer;
	text-decoration-line: none;
	color: #1E7F15;
}

.badges {
	display: inline-block;
}

a, a:hover, a:link, a:visited {
	color: black;
	text-decoration: none;
}

.page-link {
	color: #666666;
	background-color: #fff;
	border: 1px solid #ccc;
}

.page-item.active .page-link {
	z-index: 1;
	color: white;
	border-color: #1E7F15;
	background-color: #1E7F15;
}

.page-link:focus, .page-link:hover {
	color: #1E7F15;
	background-color: #fafafa;
	border-color: #1E7F15;
}

button.order {
	background-color: transparent;
	border-style: none;
	padding: 0;
}

.selected {
	color: #1E7F15 !important;
	font-weight: bold;
}

</style>

<script>

$(()=>{
	
	cnum = "${cnum}";
	order = "${order}";
	
	// 선택된 카테고리 글자색, 굵게
	if (cnum != "") {
		 document.getElementById(cnum).classList.add("selected");
	}
	
	document.getElementById(order).classList.add("selected");
	
});

</script>

<div class="container">

	<div>
		<h2 style="font-weight: bold;">상품 검색</h2>
		<br>
		<hr style="background-color: black; height: 1.2px;">
		<br>
	</div>
	<div class="row">
		<%-- 사이드 메뉴 시작 --%>
		<div class="col-md-2" id="sideinfo" class="sidebar"
			style="padding-left: 2%; margin-top: 1.8%;">
			<div style="padding: 5%;"><h5 style="font-weight: bold;">
			<a href='<%=ctxPath%>/shop/productSearch.tea?searchWord=${searchWord}&currentShowPageNo=${currentShowPageNo}&cnum=&order=${order}'>
			전체상품</a></h5></div>
			<div style="padding: 5%; font-weight: bold;">티제품</div>
			<c:forEach items="${teaCategoryList }" var="teaCat">
			<div style="text-align: left; padding: 4%; margin-left: 10%;">
				<a href='<%=ctxPath%>/shop/productSearch.tea?searchWord=${searchWord}&currentShowPageNo=${currentShowPageNo}&cnum=${teaCat.cnum}&order=${order}' id='${teaCat.cnum}'>
				${teaCat.cname}</a>
			</div>
			</c:forEach>
			<hr>
			<div style="padding: 5%; font-weight: bold;">기프트세트</div>
			<c:forEach items="${giftsetCategoryList }" var="setCat">
			<div style="text-align: left; padding: 4%; margin-left: 10%;">
				<a href='<%=ctxPath%>/shop/productSearch.tea?searchWord=${searchWord}&currentShowPageNo=${currentShowPageNo}&cnum=${setCat.cnum}&order=${order}' id='${setCat.cnum}'>
				${setCat.cname}</a>
			</div>
			</c:forEach>
		</div>
		<%-- 사이드 메뉴 끝 --%>
		<div class="col-md-10" id="maininfo" style="padding: 2.5%;">

			<div id="maincontent">
				<%-- 본문 내부 상단 바 시작 --%>
				<span class="text-dark h6"><span class="font-weight-bold"
					style="color: #1E7F15">${searchWord}</span> 검색 결과 <span
					class="font-weight-bold" style="color: #1E7F15">${totalCnt }</span>건</span>

				<%-- 정렬 선택 창 --%>
				<div class="text-right" style="float: right;">
					<button type="button" class="order" id="pnum desc"
					onclick="location.href='<%=ctxPath%>/shop/productSearch.tea?searchWord=${searchWord}&currentShowPageNo=${currentShowPageNo}&cnum=${cnum}&order=pnum desc'">
					신상품순</button>
					<span class="text-dark">|</span>
					<button type="button" class="order" id="price desc"
					onclick="location.href='<%=ctxPath%>/shop/productSearch.tea?searchWord=${searchWord}&currentShowPageNo=${currentShowPageNo}&cnum=${cnum}&order=price desc'">
					높은가격순</button>
					<span class="text-dark">|</span>
					<button type="button" class="order" id="price asc"
					onclick="location.href='<%=ctxPath%>/shop/productSearch.tea?searchWord=${searchWord}&currentShowPageNo=${currentShowPageNo}&cnum=${cnum}&order=price asc'">
					낮은가격순</button>
					<span class="text-dark">|</span>
					<button type="button" class="order" id="reviewCnt desc"
					onclick="location.href='<%=ctxPath%>/shop/productSearch.tea?searchWord=${searchWord}&currentShowPageNo=${currentShowPageNo}&cnum=${cnum}&order=reviewCnt desc'">
					리뷰많은순</button>
					<span class="text-dark">|</span>
					<button type="button" class="order" id="orederCnt desc"
					onclick="location.href='<%=ctxPath%>/shop/productSearch.tea?searchWord=${searchWord}&currentShowPageNo=${currentShowPageNo}&cnum=${cnum}&order=orederCnt desc'">
					판매순</button>
				</div>
				<%-- 본문 내부 상단 바 끝 --%>

				<hr>

				<%-- 상품 목록 시작 --%>
				<div id="giftSetList" class="row col">

					<%-- ★ 여기서부터 아래의 별까지 for문으로 반복해서 출력. 별 안쪽이 상품하나. --%>
					<c:if test="${not empty productList}">
						<c:forEach var="pvo" items="${productList}">
							<div class="card border-0 mb-4 mt-1 col-lg-4 col-md-6 ">
								<a href="<%= ctxPath %>/shop/productView.tea?pnum=${pvo.pnum}"><img
									src="../images/${pvo.pimage}" class="card-img-top" /></a>
								<div class="card-body">

									<c:if test="${not empty pvo.spvo.sname}">
										<c:if test="${pvo.spvo.sname eq 'BEST'}">
											<div
												class="badges rounded text-light text-center mb-2 badge-danger"
												style="width: 70px; font-weight: bold;">
												${pvo.spvo.sname}</div>
										</c:if>
										<c:if test="${pvo.spvo.sname eq 'NEW'}">
											<div class="badges rounded text-light text-center mb-2"
												style="width: 70px; font-weight: bold; background-color: #1E7F15;">
												${pvo.spvo.sname}</div>
										</c:if>
									</c:if>

									<c:if test="${pvo.pqty eq 0 }">
										<div
											class="badges rounded text-light text-center mb-2 badge-dark"
											style="width: 70px; font-weight: bold;">품절</div>
									</c:if>

									<c:if test="${empty pvo.spvo.sname}">
										<div class="badges mb-2">&nbsp;</div>
									</c:if>

									<h5 class="card-title" style="font-weight: bold;">
										<a href="#">${pvo.pname}</a>
									</h5>
									<p class="card-text">
										<fmt:formatNumber value="${pvo.price}" pattern="#,###" />
										원
									</p>

									<a class="card-text mr-2"><i
										class="far fa-heart text-secondary fa-lg heart"></i></a> <a
										class="card-text text-secondary mr-5">찜하기</a> <a
										class="card-text mr-2"><i
										class="fas fa-shopping-basket text-secondary fa-lg "></i></a> <a
										class="card-text text-secondary">담기</a>

								</div>
							</div>
						</c:forEach>
					</c:if>
					<c:if test="${empty productList }">
						<div class="text-center mt-4" style="width: 100%">해당하는 상품이
							없습니다.</div>
					</c:if>
					<%-- ★ 여기까지! --%>
				</div>
				<%-- 상품 목록 끝 --%>
	
				<div id="div_pageBar" style="margin-top : 100px">
						<nav id="nav_pageBar" aria-label="Page navigation example">
							<ul id = "originPageBar" class="pagination justify-content-center">${pageBar}</ul>
						</nav>
				</div>
			</div>

		</div>

	</div>

	
</div>
<%@ include file="../footer.jsp"%>