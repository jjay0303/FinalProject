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
	/*
	.tags>button{
		padding: 0;
		border: none;
		background: none;
	}*/
</style>
</head>
<body>
	
	<jsp:include page="../common/header.jsp" />
	
    <div class="innerOuter my-3" id="outer">
        <div class="head py-5">
            <p>${e.eventTitle}</p>
        </div>
        <div class="tags">
        	<form id="tagSelect" method="post" action="tagSelect.ev">
	        	<c:if test="${not empty e.tag}">
		        	<c:set var="tagArr" value="${fn:split(e.tag, ' ')}"></c:set>
		        	<c:forEach var="t" items="${tagArr}">
        				<input type="hidden" id="hashtag" name="hashtag" value="${t}">
		        		<button type="submit" class="btn">${t}</button>
		        	</c:forEach>
	        	</c:if>
        	</form>
        </div>
        <div class="content">
        	<img src="${e.img}" style="width: 100%; height: 100%;">
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
	        				<textarea class="form-control" cols="30" rows="1" style="resize:none; width:100%" readonly>로그인한 사용자만 이용가능한 서비스입니다. 로그인 후 이용바랍니다.</textarea>
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
    
    <!-- 
    <script>
    	$(".tag").click(function(){
    		//console.log("여기");
    		var tag = $(this).text();
    		console.log(tag);
    		$.ajax({
    			url: "ajaxTagSelect.ev",
    			data: {selectTag:tag},
    			success:function(result){
    				$.ajax({
    					url: "tagSelect.ev",
    					data: {list: result},
    					success:function(result){
    						
    					}, error:function(){
    						
    					}
    				})
    			},error:function(){
    				console.log("error");
    			}
    		})
    	})
    </script>
    -->
	
	 <jsp:include page="../common/footerBar.jsp" />
	
</body>
</html>