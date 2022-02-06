<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="./resources/css/helpMain.css">
    <style>
    	.middle{
    		width: 100%;
    		margin: auto;
    		margin-top: 50px;
    		margin-bottom: -20px;
   		}
        .middle>input{
        	width: 200px; 
        	float: left; 
        	margin-top: -1px;
        }
        .middle>.qs{float: right;}
        .middle>button{
        	width: 100px;
        	margin-left:0;
        }
    </style>
</head>
<body>

	<jsp:include page="../common/header.jsp" />
	
    <div class="innerOuter my-3">
        <div class="head py-3">
            <p>1:1문의</p>
        </div>
        <div class="button my-3">
            <button type="button" class="btn btn-outline-primary" onclick="location.href='helpList.he';">공지사항</button>
            <button type="button" class="btn btn-outline-primary" onclick="location.href='faqMain.he';">FAQ</button>
            <button type="button" class="btn btn-outline-primary" onclick="location.href='qnaMain.he';">1:1문의</button>
        </div>
        <div class="middle">
            <input type="text" class="form-control form-control-sm">
            <button class="btn btn-sm btn-outline-primary" style="width:60px;">검색</button>
            <button type="button" class="btn btn-primary qs">문의하기</button>
        </div>
        <div class="content my-5">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>카테고리</th>
                        <th>총 강의수</th>
                        <th>총 수강생수</th>
                        <th>월 매출</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>운동</td>
                        <td>340</td>
                        <td>6421</td>
                        <td>70,245,100</td>
                    </tr>
                    <tr>
                        <td>운동</td>
                        <td>340</td>
                        <td>6421</td>
                        <td>70,245,100</td>
                    </tr>
                    <tr>
                        <td>운동</td>
                        <td>340</td>
                        <td>6421</td>
                        <td>70,245,100</td>
                    </tr>
                    <tr>
                        <td>운동</td>
                        <td>340</td>
                        <td>6421</td>
                        <td>70,245,100</td>
                    </tr>
                    <tr>
                        <td>운동</td>
                        <td>340</td>
                        <td>6421</td>
                        <td>70,245,100</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="paging"></div>
    </div>
    
     <jsp:include page="../common/footerBar.jsp" />
     
</body>
</html>