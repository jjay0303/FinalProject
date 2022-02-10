<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./resources/css/stuMypage.css">
<style>
     #info>p{
     	width: 90%;
     	margin: auto;
     	margin-top: 100px;
     	font-size: 18px;
     	word-wrap: break-word;
     }
     #checkPwd{
     	width: 40%;
     	margin: auto;
     }
     #checkPwd>h3{
     	color: rgb(107, 171, 213); 
		font-weight: 600;
     	text-align: center;
		margin-top: 50px; 
		margin-bottom: 20px;
	}
	#checkPwd>input{margin-left: 50px;}
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
				    <h2>회원 탈퇴</h2>
				    <div id="info">
					    <p>
					    1. 기존 아이디로 재가입이 불가능 합니다. 회원 탈퇴를 신청하시면 해당 아이디는 즉시 탈퇴 처리되며, 탈퇴한 아이디는 재사용 및 복구가 불가능합니다.<br> <br>
						2. 회원 탈퇴시 수강중인 강의와 진행중인 주문에 대한 조회가 불가능하며 모든 작성글은 <br>탈퇴 후 삭제할 수 없습니다. 게시물 등의 삭제를 원하시는 경우에는 반드시 직접 삭제 후, <br>탈퇴 신청을 해 주시기 바랍니다.<br> <br>
						3. 위 항목에 동의하시면 아래 비밀번호 확인 후 탈퇴 신청을 진행해주시기 바랍니다.<br> <br>
					    </p>
						   
				    </div>
				    <div id="checkPwd">
					    <h3>비밀번호 확인</h3>
					    <input type="password" placeholder="비밀번호 입력" name="userPwd">
					    <button id="button" type="button" class="btn btn-info" data-toggle="modal" data-target=".modal">회원탈퇴</button>
				    </div>
				</div>
			</td>
		</tr>
	</table>
	
	<script>
		$("#button").click(function(){
			$(".modal").modal();
		})
	</script>
	
	<div class="modal" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<p style="text-align:center;">정말 탈퇴하시겠습니까?</p>
				</div>
			<div class="modal-footer">
		        <button id="modalClose" type="button" class="btn" data-dismiss="modal">닫기</button>
		    </div>
			</div>
		</div>
	</div>
    

</body>
</html>