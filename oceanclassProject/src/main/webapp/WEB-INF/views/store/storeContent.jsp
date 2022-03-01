<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#outer {
	width: 1200px;
	margin: auto;
	margin-top: 20px;
}


.items {
	width: 100%;
	margin-top: 50px;
}

.items_title {
	font-size: 20px;
}

.item {
	width: 220px;
	display: inline-block;
	box-sizing: border-box;
	margin: 30px;
    margin-bottom: 30px;
}

.item>span {
	font-size: 12px;
}

.item * {
	cursor: pointer;
}

.thumbnail {
	width: 100%;
	height: 200px;
}

.more_btn {
	text-decoration: none;
	color: rgb(172, 171, 171);
}
</style>
</head>
<body>

	<jsp:include page="../common/header.jsp" />

	<div id="outer">
		<div id="silde">
			<jsp:include page="storeImgSlider.jsp"/>
		</div>

		<input type="hidden" id="memNo" value="${ loginUser.memNo }">

		<div class="items">
			<div class="items_title">
				<b>· HOT ITEM</b>
				<!--띄어쓰기-->
				<a href="storeSearchList.st" class="more_btn">+more</a>
			</div>

			<c:forEach var="h" items="${ hlist }" end="3">
				<div class="item" >
					<img src="${ h.productImg0 }" class="thumbnail"
						onclick="goDetail(${h.productNo});">
					<div style="font-size: 13px;">
						<b>${ h.nickname }</b>
					</div>
					<div class="title" style="height:50px;" onclick="goDetail(${h.productNo});">${ h.title }</div>
					<div id="likeArea">
						<c:choose>
							<c:when test="${ h.likeCk == 1 }">
								<img src="resources/images/heart2.png" width="20" height="20"
									id="likeImg" onclick="likeCk(${h.productNo}, this);">
							</c:when>
							<c:otherwise>
								<img src="resources/images/heart1.png" width="20" height="20"
									id="likeImg" onclick="likeCk(${h.productNo}, this);">
							</c:otherwise>
						</c:choose>
						<span id="likeCount">${ h.like}</span>
					</div>
					<div>
						<b> <span>${ h.price }</span>원
						</b>
					</div>
				</div>
			</c:forEach>
		</div>
		<script>
				
		
				function goDetail(no) {
				   location.href = "productMain.pr?pno=" + no;
				}
				
				function likeCk(pno, img){
					//console.log(window.event.target);
					
		    			 if(document.getElementById("memNo").value == ""){
		    	                alert("로그인 후 이용 가능한 서비스 입니다.");
		    	            } else{
		    	                $.ajax({
		    	                    url:"likeStore.st",
		    	                    data:{
		    	                        memNo:document.getElementById("memNo").value,
		    	                        referNo:pno
		    	                    }, success:function(likeResult){
		    							console.log(likeResult);
		    	                        if(likeResult.message == 'ss'){
		    	                            img.src = "resources/images/heart2.png";
		    	                            $(img).next().html(likeResult.likeCount);
		    	                            alert("찜 목록에 추가 되었습니다!");
		    	                        } else if(likeResult.message == 'dd'){
		    	                        	img.src = "resources/images/heart1.png";
		    	                            $(img).next().html(likeResult.likeCount);
		    	                            alert("찜 목록에서 삭제되었습니다.");
		    	                        } else {
		    	                            alert("비정상적인 요청입니다.");
		    	                        }
		    	                    	
		    	                    }, error:function(){
		    	                        console.log("찜하기 ajax 통신 실패");
		    	                    }
		    	           	    })
		    	            }
		    		}
			</script>


		<div class="items">
			<div class="items_title">
				<b>· NEW ITEM</b>
				<!--띄어쓰기-->
				<a href="storeSearchList.st" class="more_btn">+more</a>
			</div>

			<c:forEach var="n" items="${ nlist }" end="3">
				<div class="item">
					<img src="${ n.productImg0 }" class="thumbnail"
						onclick="goDetail(${n.productNo});">
					<div style="font-size: 13px;">
						<b>${ n.memberNo }</b>
					</div>
					<div class="title" style="height:50px;" onclick="goDetail(${n.productNo});">${ n.title }</div>
					<div id="likeArea">
						<c:choose>
							<c:when test="${ n.likeCk == 1 }">
								<img src="resources/images/heart2.png" width="20" height="20"
									id="likeImg" onclick="likeCk(${n.productNo}, this);">
							</c:when>
							<c:otherwise>
								<img src="resources/images/heart1.png" width="20" height="20"
									id="likeImg" onclick="likeCk(${n.productNo}, this);">
							</c:otherwise>
						</c:choose>
						<span id="likeCount">${ n.like}</span>
					</div>
					<div>
						<b> <span>${ n.price }</span>원
						</b>
					</div>
				</div>
			</c:forEach>

		</div>

		<div style="height: 150px;"></div>

	</div>

	<jsp:include page="../common/footerBar.jsp" />

</body>
</html>