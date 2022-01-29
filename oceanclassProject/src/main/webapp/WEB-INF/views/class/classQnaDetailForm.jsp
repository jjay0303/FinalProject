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
     /* div{box-sizing: border-box; border:1px solid red;} */

    /* 전체 감싸는 div */
    .wrap{
        width: 1000px;
        height: auto;
        margin: auto;
    }
    /* 글내용 div */
    #content-wrap{
        box-sizing: border-box; border:2px solid gray;
        /* padding-left: 15px; */
    }
    /* 게시판이름 */
    #top-area{
        height: 100px;
        margin-top: 50px;
    }
    #bord-name{
        color: rgb(107, 171, 213);
        font-weight:bolder;
        font-size: 30px;
    }
    /* 카테고리,버튼 전체영역 */
    #category-area{
        display: flex;
        font-size: 19px;
        font-weight: bolder;
        height: 30px;
        color: gray;
        line-height: 47px;
        padding-left: 15px;
    }
    /* 카테고리 버튼 전체*/
    #category-btn{
        margin-left: 480px;
        margin-top: -3px;
    }
    /* 제목,날짜,아이디 전체영역 */
    #title-area{
        display: flex;
        margin-bottom: 25px;
        margin-top: -5px;
        padding-left: 15px;
    }
    /* 제목 */
    #title{
        font-weight: bolder;
        font-size: 22px;
    }
    /* 날짜 */
    #sysdate{
        color: gray;
        padding-top: 10px;
        padding-left: 10px;
    }
    /* 닉네임전체 */
    #writer{
        margin-left: 220px;
    }
    /* 닉네임 */
    #writer-nick{
        padding-top: 10px;
        font-size: 15px;
        font-weight: bold;
        margin-left: 10px;
        line-height: 35px;
    }
    #content-area{
        margin-bottom: 40px;
        width: 950px;
        padding-left: 24px;
        align-content: center;
    }
    #content-text{
        border: none;
        resize: none;
    }
    #content-report{
        float: right;
    }
    #reply-area{
        display: flex;
        margin-left: 55px;
        margin-bottom: 20px;
    }
</style>  
</head>
<body>
	
	<jsp:include page="../common/header.jsp" />
	
	<div class="wrap">
        <div id="top-area">
            <span id="bord-name">클래스 문의 관리</span>
        </div>
        <div id="content-wrap">
            <div id="category-area">
                <div id="category">[보미강사의 강아지 훈련 클래스]</div>
                <div id="category-btn">
                    <button class="btn" style="background-color: rgb(107, 171, 213); color: white; font-weight: bolder; height: 32px; padding-top:3px;">이전글</button>
                    <button class="btn" style="background-color: rgb(107, 171, 213); color: white; font-weight: bolder; height: 32px; padding-top:3px;">목록</button>
                    <button class="btn" style="background-color: rgb(107, 171, 213); color: white; font-weight: bolder; height: 32px; padding-top:3px;">다음글</button>
                </div>
            </div>
            <hr style="border: solid 1px rgb(179, 178, 178); width: 980px;">
            <div id="title-area">
                <div id="title">강사님 궁금해요 산책코스에서 아령은 필수인가요?</div>
                <div id="sysdate">2022년 1월 17일</div>
                <div id="writer">
                    <img src="resources/images/user.png" style="width: 30px;">
                    <span id="writer-nick">보미사랑</span>
                </div>
            </div>
            
            <div id="content-area" align="center">
                <img src="resources/images/bomi7.jpg" style="width: 350px;">
                <br><br>
                <textarea id="content-text" cols="123" rows="10">내용을 입력 하세요.</textarea>
                <div id="content-report">
                <span>신고하기</span>
                </div>
            </div>
            <hr style="border: solid 1px rgb(179, 178, 178); width: 980px;">
            
            <div id="reply-area">
                <div id="reply-img">
                    <img src="resources/images/reply2.png" alt="">
                </div>
                <input type="text" id="reply-input" style="width: 750px;" placeholder="댓글 내용을 입력해 주세요.">
                <div id="reply-btn">
                    <button class="btn btn-lg" style="background-color: rgb(107, 171, 213); color: white; font-weight: bolder; ">답변</button>
                </div>
            </div>
        
    </div>
	
</body>
</html>