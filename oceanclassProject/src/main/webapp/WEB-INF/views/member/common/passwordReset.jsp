<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #wrap{
        width: 1000px;
        height: auto;
        margin: auto;
    }
    #logoImg{
        margin-top: 50px;
        margin-bottom: 70px;
    }
    #idFind-text{
        font-size: 25px;
        font-weight: bolder;
        margin-bottom: 65px;
    }
    #top-text{
        color: rgb(52, 152, 219);
    }
    .form-group{
        display: flex;
        align-items: baseline;
        margin-top: 5px;
    }
    #idFind-form{
        width: 360px;
        margin: 0 auto;
    }
    #findId {
        width: 250px;
        height: 50px !important;
        padding: 10px;
        border: 1px solid lightgray;
        border-radius: 5px;
        margin-right: 10px;
        /* box-shadow: 1px 1px 1px gray inset; */
    }
    #pwd{
        width: 350px;
        height: 50px;
    }
    .rightBtn{
        width: 90px;
        height: 45px;
        /* margin-left: 5px; */
        border: none;
        background-color: rgb(228, 240, 250);
    }
    #findIdBtn {
        display: block;
        font-size: 20px;
        font-weight: bolder;
        width: 350px;
        height: 50px;
        margin-bottom: 10px;
        margin-top: 30px;
    }
    .notifyRed {
        font-size: 13px;
        color: red;
        font-weight: bold;
    }
</style>
</head>
<body>
	<div style="width: 1400px; height: auto; margin: auto;">
        <div id="wrap">
            <div id="logoImg" align="center">
                <img src="resources/images/logo.png" width="280px">
            </div>
            <div id="idFind-form">
                <div id="idFind-text" align="center">
                    <span>비밀번호 재설정</span>
                </div>
                <form action="" method="post">
                    
                    <span id="top-text">변경할 비밀번호</span>
                    <div class="form-group">
                      <input type="text" class="form-control" id="pwd" placeholder="비밀번호(영문,숫자 포함 6자리 이상)" name="userId" required> 
                    </div>

                    <span id="top-text">비밀번호 확인</span>
                    <div class="form-group">
                      <input type="text" class="form-control" id="pwd" placeholder="비밀번호 확인" name="userId" required> 
                    </div>

                    <button type="submit" id="findIdBtn" class="btn" style="background-color: rgb(228, 240, 250);">변경 완료</button>
                    
                </form>
            </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
        <jsp:include page="../../common/footerBar.jsp" />
    </div>
</body>
</html>