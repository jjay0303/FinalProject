<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="./resources/css/stuMypage.css?second">
<style>
	.conhead{
        width: 100%;
	    height: 15%;
	}
	.content1{
	    width: 100%;
	    height: 50%;
	}
	.conhead>h2{width: 30%;}
	.conhead>a{
		float: right; 
		margin-top: -20px; 
		text-decoration: none;
		color: black;	
	}
	table{
	    width: 90%;
	    margin: auto;
	    text-align: center;
	}
</style>
</head>
<body>
	<table id="mainTable">
		<tr>
			<td colspan="2" style="height:200px;"><jsp:include page="mypageHeader.jsp" flush="false" /></td>
		</tr>
		
		<tr>
			<td id="mainSide"><jsp:include page="mypageSidebar.jsp" flush="false" /></td>
			<td id="mainContent">
				<div class="content">
					<div class="content1">
						<c:choose>
					    	<c:when test="${empty list}">
					    		<div class="conhead">
							        <h2>스토어 문의</h2>
							    </div>
					    		<p style="font-size:18px; font-weight:800; text-align:center; margin-top: 50px;">
					    			등록된 문의가 없습니다
					    		</p>
					    	</c:when>
					    	<c:otherwise>
					    		<div class="conhead">
							        <h2>스토어 문의</h2>
							        <a href="myShoppingQnaDetail.me">더보기</a>
							    </div>
							    <table class="table">
							        <thead>
							            <tr>
							                <th>상품</th>
							                <th>문의내용</th>
							                <th>답변유무</th>
							            </tr>
							        </thead>
							        <tbody>
					        			<c:forEach var="s" items="${list}" begin="0" end="4">
								            <tr>
								                <td>${s.proTitle}</td>
								                <td>
									                <c:choose>
								            		<c:when test="${fn:length(s.content) gt 25}">
								            			<c:out value="${fn:substring(s.content, 0, 24)}"></c:out>
								            			..
								            		</c:when>
								            		<c:otherwise>
								            			<c:out value="${s.content}"></c:out>
								            		</c:otherwise>
									            	</c:choose>
								                </td>
								                <c:choose>
							                        <c:when test="${not empty s.answerContent}">
							                        	<td>등록완료</td>
							                        </c:when>
							                        <c:otherwise>
							                        	<td>대기중</td>
							                        </c:otherwise>
						                        </c:choose>
								            </tr>
							            </c:forEach>
							        </tbody>
						        </table>
					        </c:otherwise>
					 	</c:choose>	
					 </div> 
					 
					 <div class="content1">
					    <div class="conhead">
					        <h2>스토어 리뷰</h2>
					        <a href="스토어">더보기</a>
					    </div>
					    <table class="table">
					        <thead>
					            <tr>
					                <th>상품</th>
					                <th>리뷰</th>
					            </tr>
					        </thead>
					        <tbody>
					        
					        </tbody>
					    </table>
					</div>  
					
					 
			  	</div>
			</td>
		</tr>
	</table>

</body>
</html>