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
    <link rel="stylesheet" href="./resources/css/eventMain.css?5">
<style>
	.reply>input{
		margin: 0 auto;
		margin-bottom: 30px;
	}
	.innerOuter>button{
		display: block;
		width: 250px;
		margin: 0 auto;
		margin-top: 80px;
		margin-bottom: 50px;
		background: rgb(224, 224, 224)
	}
	.tags button{
		border: 0;
		outline: 0;
		background: white;
		font-weight: 600;
		font-size: 24px;
		float: left;
		margin-bottom: 30px;
		margin-left: 30px;
	}
	.tags button:hover{color: rgb(107, 171, 213, 0.7)}
	#img{width: 60%; height: 35%; margin: 0 auto; margin-top: 100px;  overflow: hidden; }
	.content button{display: block; width: 50%; margin: 0 auto; margin-top: 50px;}
</style>
</head>
<body>
	
	<jsp:include page="../common/header.jsp" />
	
    <div class="innerOuter my-3" id="outer">
        <div class="head py-5">
            <p>${e.eventTitle}</p>
        </div>
        <div class="tags">
        	<c:if test="${not empty e.tag}">
	        	<c:set var="tagArr" value="${fn:split(e.tag, ' ')}"></c:set>
	        	<c:forEach var="t" items="${tagArr}">
	        		<form id="tagSelect" method="post" action="tagSelect.ev">
       					<input type="hidden" id="hashtag" name="hashtag" value="${t}">
	        			<button type="submit" >${t}</button>
	        		</form>
	        	</c:forEach>
        	</c:if>
        </div>
        <div class="content">
        	<c:choose>
        		<c:when test="${e.couponNo ne 0}">
        			<div id="img"><img src="${e.img}"></div>
        			<input type="hidden" id="couponNo" name="couponNo" value="${e.couponNo}">
        			<button type="button" class="btn btn-lg btn-light" onclick="getCoupon();">쿠폰받기</button>
        		</c:when>
        		<c:otherwise>
        			<img src="${e.img}" style="width: 100%; height: 90%;">
        		</c:otherwise>
        	</c:choose>
        </div>
        
        <script>
        	function getCoupon(){
        		let couponNo = $(".content").children("#couponNo").val();
        		let memNo = '<c:out value="${loginUser.memNo}"/>';
        		let login = "";
        		console.log(couponNo);
        		if(memNo == login){
        			alert("로그인 후 이용 가능합니다");
        		}else{
        			$.ajax({
        				url: "getCoupon.ev",
        				data:{memNo: memNo,
        					  couponNo: couponNo},
        				success:function(result){
        					//console.log(result);
        					if(result>0){
        						$(".modalSuccess").modal();
        					}else if(result == 0){
        						$(".modalAlready").modal();
        					}else if(result == -1){
        						$(".modalEnd").modal();	
        					}else{
        						$(".modalFail").modal();
        					}
        				},error:function(){
        					console.log("쿠폰발급실패");
        				}
        			});
        		}
        	}
        </script>
        
       	<div class="modal modalSuccess" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
						<p style="text-align:center;">쿠폰이 발급되었습니다!</p>
					</div>
				<div class="modal-footer">
			        <button id="modalClose" type="button" class="btn" data-dismiss="modal">닫기</button>
			    </div>
				</div>
			</div>
		</div>
		
		<div class="modal modalAlready" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
						<p style="text-align:center;">이미 발급받은 쿠폰입니다.</p>
					</div>
				<div class="modal-footer">
			        <button id="modalClose" type="button" class="btn" data-dismiss="modal">닫기</button>
			    </div>
				</div>
			</div>
		</div>
		
		<div class="modal modalEnd" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
						<p style="text-align:center;">쿠폰이 모두 소진되었습니다.</p>
					</div>
				<div class="modal-footer">
			        <button id="modalClose" type="button" class="btn" data-dismiss="modal">닫기</button>
			    </div>
				</div>
			</div>
		</div>
		
		<div class="modal modalFail" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
						<p style="text-align:center;">쿠폰 발급에 실패하였습니다. 다시 시도해주세요.</p>
					</div>
				<div class="modal-footer">
			        <button id="modalClose" type="button" class="btn" data-dismiss="modal">닫기</button>
			    </div>
				</div>
			</div>
		</div>
		
        <table class="table" id="replyTable">
        	<thead>
        		<tr></tr>
	        	<c:choose>
	        		<c:when test="${not empty loginUser}">
	        			<th style="vertical-align: middle; text-align: middle;">${loginUser.nickName}</th>
	        			<th>
	        				<input id="reply" class="form-control" style="width:100%">
	        			</th>
	        			<th style="vertical-align: middle"><button class="btn btn-light" onclick="addReply();">등록</button></th>
	        		</c:when>
	        		<c:otherwise>
	        			<th></th>
	        			<th>
	        				<textarea class="form-control" cols="30" rows="1" style="resize:none; width:100%" readonly>로그인 후 이용바랍니다.</textarea>
	        			</th>
	        			<th style="vertical-align: middle"><button class="btn btn-light" disabled>등록</button></th>
	        		</c:otherwise>
	        	</c:choose>
        	</thead>
       		<tbody style="text-align:center;">
       		</tbody>
        </table>
       	<button type="button" class="btn" onclick="history.back()">목록으로</button>
    </div>    
    
    <script>
    
		$(function(){
			replyList();
		})    
		
		function replyList(){
			$.ajax({
				url:"replyList.ev",
				data:{contentNo: ${e.eventNo}},
				success:function(list){
					//console.log(list);
					
					let value = "";
    				for(let i in list){
    					value += "<tr>"
		                       +    "<th>" + list[i].nickName + "</th>"
		                       +    "<td>" + list[i].replyContent + "</td>"
		                       +    "<td>" + list[i].replyDate + "</td>"
		                       + "</tr>";
    				}
    				
    				$("#replyTable tbody").html(value);
    				
				},error:function(){
					console.log("댓글조회실패여기오지마ㅠㅠ");
				}
			})
		}
    
    	function addReply(){
    		reply = $("#reply").val();
    		//console.log(reply);
    		if(reply.trim().length != 0){
    			$.ajax({
    				url: "replyInsert.ev",
    				data:{
    					memNo: '${loginUser.memNo}',
    					contentNo: ${e.eventNo},
    					replyContent: reply
    				},success:function(result){
    					if(result == "1"){
    						replyList();
    						$("#reply").val("");
    					}
    				},error:function(){
    					console.log("댓글추가실패오지마ㅠㅠ");
    				}
    			})
    		}else{
    			alert("댓글 작성 후 등록해주세요!");
    		}
    	}
    </script>
	
	 <jsp:include page="../common/footerBar.jsp" />
	
</body>
</html>