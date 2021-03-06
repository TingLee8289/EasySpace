<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.*"%>
<%@ page import="ezs.ser_ord.model.*"%>
<%
Integer memID = (Integer) session.getAttribute("memID");
SerOrdService serOrdSvc = new SerOrdService();
List<SerOrdVO> vdrOrdList = serOrdSvc.findOrdByVdrID(memID);

pageContext.setAttribute("vdrOrdList", vdrOrdList);
%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>EASY SPACE</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/member.center.styles.css"	rel="stylesheet" />
<script	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
<link rel="stylesheet"href=" https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css ">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<style>
#nav {
	background-color: lightgrey;
	z-index: 9999;
	padding: 0px;
	height: 40px;
	width: 100%;
	position: fixed;
}
</style>
<style>
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>


<script src="https://kit.fontawesome.com/1c2ccc4859.js" crossorigin="anonymous"></script>

</head>
<body class="sb-nav-fixed">
	<!-- ?????????????????????--------------------------------------- -->
	<div class="navbar navbar-expand-lg navbar-dark" id="nav">
		<div class="container">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03"
				aria-controls="navbarTogglerDemo03" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
				<ul class="navbar-nav ms-auto me-sm-2 mt-2 mt-lg-0">
					<li class="nav-item active me-3"><a class="nav-link text-dark"
						href="<%=request.getContextPath()%>/frontend/EZ_home.jsp">?????? </a></li>
					<li class="nav-item me-3"><a class="nav-link text-dark"
						href="#">????????????</a></li>
					<li class="nav-item me-3"><a class="nav-link text-dark"
						href="<%=request.getContextPath()%>/frontend/sec_items/secItemsViewPage.jsp">????????????</a>
					</li>
					<li class="nav-item me-3"><a class="nav-link text-dark"
						href="<%=request.getContextPath()%>/frontend/ser_ad/serAdViewPage.jsp">????????????</a>
					</li>

					<%
					String memUsername = (String) session.getAttribute("memUsername");

					if (memUsername != null) {
					%>
					<li class="nav-item dropdown"><a class="nav-link text-dark"
						href="#" id="navbarDropdown" role="button"
						data-bs-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <img
							class="rounded-circle u-box-shadow-sm me-2 text-dark" width="25"
							height="25" src=" https://dummyimage.com/100/007bff/efefef"
							alt="Htmlstream"> ${memUsername} <i
							class="fa fa-angle-down   "></i></a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item"
								href="<%=request.getContextPath()%>/frontend/member/memberCenter/buyerMemberCenter.jsp">????????????</a>
							<a class="dropdown-item"
								href="<%=request.getContextPath()%>/frontend/member/memberCenter/sellerMemberCenter.jsp">????????????</a>
							<a class="dropdown-item"
								href="<%=request.getContextPath()%>/frontend/chat/index.jsp">??????</a>
							<a class="dropdown-item"
								href="<%=request.getContextPath()%>/frontend/sec_items/shoppingCart.jsp">?????????</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item"
								href="<%=request.getContextPath()%>/member/MemberServlet.do?action=logout">??????</a>
						</div></li>
					<%
					} else {
					%>
					<li class="nav-item me-3"><a class="nav-link text-dark"
						href="<%=request.getContextPath()%>/frontend/member/login.jsp">??????</a></li>
					<%
					}
					%>
				</ul>

			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- ?????????????????????--------------------------------------- -->

	<!-- ?????????????????????--------------------------------------- -->

	

	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<!-- ------------------------------------------------------------------------------------------------- -->
						<div class="sb-sidenav-menu-heading">??????????????????</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-home"></i>
							</div> ??????????????????
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								 <a class="nav-link" href="layout-static.html">??????????????????</a>
                                    <a class="nav-link" href="layout-static.html">????????????</a>
                                    <a class="nav-link" href="<%=request.getContextPath()%>/frontend/ren_appointment/listRenAppByLDD.jsp">???????????????</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">???????????????</a>
							</nav>
						</div>
						<!-- ------------------------------------------------------------------------------------------------- -->
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapsePages" aria-expanded="false"
							aria-controls="collapsePages">
							<div class="sb-nav-link-icon">
								<i class="fas fa-couch"></i>
							</div> ??????????????????
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								  <a class="nav-link" href="<%=request.getContextPath()%>/frontend/sec_items/select_page.jsp">????????????</a>
                                    <a class="nav-link" href="<%=request.getContextPath()%>/frontend/sec_ord/listAllSecOrd.jsp">????????????</a>
							</nav>
						</div>
						<!-- ------------------------------------------------------------------------------------------------- -->
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapsePages2" aria-expanded="false"
							aria-controls="collapsePages">
							<div class="sb-nav-link-icon">
								<i class="fas fa-wrench"></i>
							</div> ??????????????????
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsePages2"
							aria-labelledby="headingThree" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="<%=request.getContextPath()%>/frontend/ser_vdr/addSerVdr.jsp">????????????</a>
                                    <a class="nav-link" href="<%=request.getContextPath()%>/frontend/ser_vdr/listOneSerVdr.jsp">????????????????????????</a>
                                    <a class="nav-link" href="<%=request.getContextPath()%>/frontend/ser_ad/addSerAd.jsp">????????????</a>
                                    <a class="nav-link" href="<%=request.getContextPath()%>/frontend/ser_ad/listAllSerAd.jsp">????????????</a>
                                    <a class="nav-link" href="<%=request.getContextPath()%>/frontend/ser_quo/getQuoByVdrID.jsp">???????????????</a>
                                    <a class="nav-link" href="<%=request.getContextPath()%>/frontend/ser_ord/findQuoBeforeByVdrID.jsp">????????????</a>
                                    <a class="nav-link" href="<%=request.getContextPath()%>/frontend/ser_ord/getOrdByVdrID.jsp">????????????</a>
							</nav>
						</div>
						<!-- ------------------------------------------------------------------------------------------------- -->
					</div>
				</div>

			</nav>
		</div>
<!-- main ??????--------------------------------------------------------------------------------- -->
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
<!-- ????????????????????????--------------------------------------------------------------------------------- -->

<%-- ???????????? --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">?????????????????????:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<div class="container-fluid m-3 mx-auto">
		<main>
			<div id="data-panel" class="table-responsive ">
				<table
					class="table table-striped table-hover align-middle text-center caption-top">
					<caption>
						<h2>????????????????????????</h2>
						
					</caption>
					<thead class="table-success">
						<tr class="text-nowrap">
							<!--   insert data         -->
							<th>??????ID</th>
							<th>??????????????????</th>
							<th>????????????</th>
							<th>????????????</th>
							
							<th>??????ID</th>
							<th>????????????</th>
							<th>????????????</th>
							<th>????????????</th>
							<th>????????????</th>
							<th>????????????</th>
							<th>????????????</th>
							<th>??????????????????</th>
							<th>????????????</th>
							<th>?????????</th>
							<th>??????????????????</th>
							<th>??????????????????</th>
							
<!-- 							<th>????????????????????????</th> -->
<!-- 							<th>????????????????????????</th> -->
							<th>??????</th>
							<th></th>
							<th></th>
							
						</tr>
					</thead>
					<tbody id="show-list">

						<%@ include file="page1.file"%>
						<c:forEach var="serOrdVO" items="${vdrOrdList}"
							begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
							<tr>
								<td>${serOrdVO.ordID}</td>

								<td>
									<c:if test="${serOrdVO.ordStatus == 0}">?????????</c:if> 
									<c:if test="${serOrdVO.ordStatus == 1}">?????????</c:if> 
									<c:if test="${serOrdVO.ordStatus == 2}">??????</c:if>
									<c:if test="${serOrdVO.ordStatus == 3}">??????</c:if>
								</td>
								<td>
									<c:if test="${serOrdVO.ordPayStatus == 0}">?????????</c:if> 
									<c:if test="${serOrdVO.ordPayStatus == 1}">?????????</c:if> 
									<c:if test="${serOrdVO.ordPayStatus == 2}">????????????</c:if> 
								
								</td>
								<td>
									<c:if test="${serOrdVO.ordPayType == 0}"></c:if> 
									<c:if test="${serOrdVO.ordPayType == 1}">????????????</c:if> 
									<c:if test="${serOrdVO.ordPayType == 2}">????????????</c:if> 
									<c:if test="${serOrdVO.ordPayType == 3}">ATM??????</c:if>
								</td>
								
								<td>${serOrdVO.ordVdrID}</td>
								<td>${serOrdVO.ordSerClaID}</td>
								<td>${serOrdVO.ordClnName}</td>
								<td>${serOrdVO.ordClnTel}</td>
								<td>${serOrdVO.ordWorkDate}</td>
								<td>${serOrdVO.ordCounty}</td>
								<td>${serOrdVO.ordDist}</td>
								<td>${serOrdVO.ordAddr}</td>
								<td>${serOrdVO.ordItem}</td>
								<td>${serOrdVO.ordTotalPrice}</td>
								<td>${serOrdVO.ordMemVatno}</td>
								<td>${serOrdVO.ordVdrVatno}</td>
<%-- 								<td>${serOrdVO.ordBuyerScore}</td> --%>
<%-- 								<td>${serOrdVO.ordBuyerTxt}</td> --%>
								
								<td>${serOrdVO.ordNote}</td>
								<td>
									<FORM METHOD="post"
										ACTION="<%=request.getContextPath()%>/ser_ord/UpdateOrdByVdrServlet.do"
										style="margin-bottom: 0px;">
										<input type="submit" value="????????????"> <input type="hidden"
											name="ordID" value="${serOrdVO.ordID}"> <input
											type="hidden" name="action" value="updateOneOrd">
									</FORM>
								</td>
								<td>
									<FORM METHOD="post"
										ACTION="<%=request.getContextPath()%>/ser_ord/JobCompletedServlet.do"
										style="margin-bottom: 0px;">
										<input type="submit" value="??????"> <input type="hidden"
											name="ordID" value="${serOrdVO.ordID}"> <input
											type="hidden" name="action" value="JobCompleted">
									</FORM>
								</td>
							</tr>
						</c:forEach>
					</tbody>
					<%@ include file="page2.file"%>
					<!--   insert data         -->
				</table>
			</div>
		</main>
	</div>






<!-- ????????????????????????--------------------------------------------------------------------------------- -->
				</div>
			</main>
		</div>
<!-- main ??????--------------------------------------------------------------------------------- -->
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"></script>
	<script src="js/datatables-simple-demo.js"></script>

	<!-- ?????????????????????--------------------------------------- -->
	<main></main>
</body>
</html>