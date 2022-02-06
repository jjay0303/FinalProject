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
    /*
    .tc-wrap{
        width: 1200px;
        margin: auto;
        margin-top: 30px;
    }
    #tc-box{
        font-size: 20px;
        font-weight: bolder;
        text-align: right;
    }
    */
    /* 전체 감싸는 div */
    .wrap{
        width: 1000px;
        height: auto;
        margin: auto;
        margin-top: 50px;
    }
    /* 글내용 div */
    #content-wrap{
        box-sizing: border-box; border:2px solid gray;
        /* padding-left: 15px; */
    }
    /* 게시판이름 영역*/
    #top-area{
        height: 100px;
        margin-top: 50px;
        display: flex;
        justify-content: space-between;
    }
    /* 게시판이름 */
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
        font-size: 23px;
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
        padding-top: 11px;
        font-size: 15px;
        font-weight: bold;
        margin-left: 5px;
        line-height: 35px;
        color: black;
    }
    /* 내용 전체 영역 */
    #content-area{
        margin-bottom: 40px;
        width: 950px;
        padding-left: 24px;
        align-content: center;
    }
    /* 내용 안 텍스트 상자 */
    #content-text{
        border: none;
        resize: none;
    }
    /* 신고하기 */
    #content-report{
        float: right;
        color: gray;
    }
    /* 댓글 영역 */
    #reply-area{
        height: 210px;
        margin-left: 35px;
        margin-bottom: 20px;
    }
    /* 댓글 바 영역 */
    #reply-bar{
        display: flex;
        margin-bottom: 20px;
    }
    /* 댓글바 이미지, 댓글 프로필 이미지 */
    #reply-img{
        margin-right: 15px;
        margin-top: 5px;
    }
    /* 댓글 입력 창 */
    #reply-input{
        width: 750px;
        height: 40px;
        margin-top: 4px;
        border-radius: 3px;
    } 
    /* 댓글 버튼 */
    #reply-btn{
        margin-left: 15px;
        margin-top: 5px;
    }
    /* 댓작성자 영역 */
    #reply-writer{
        display: flex;
        margin-bottom: 10px;
    }
    /* 댓글 프사 */
    #reply-img{
        vertical-align: top;
    }
    /* 댓 닉네임 */
    #reply-nick{
        vertical-align: top;
        font-weight: bolder;
        color: black;
    }
    /* 댓글창 내용들 */
    #reply-content-area{
        margin-left: 30px;
    }
    /* 댓글 내용 */
    #reply-content{
        margin-bottom: 10px;
    }
    /* 수정 삭제 링크 */
    #btn-box a{
        display: inline-block;
        color: lightslategrey;
        margin-right: 5px;
    }

</style>  
</head>
<body>
    <!--
	<div class="tc-wrap">
        <div id="tc-box">
            <img src="resources/images/user.png" style="width: 35px;" alt=""><span> 보미사랑 강사님 환영합니다!</span>
        </div>
    </div>
    -->
    <div style="width: 1600px; height: auto; margin: auto;">
    	<jsp:include page="../../common/teacher/tcMypageSidebar.jsp" />
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
                        <a href="" id="writer-nick">보미사랑</a>
                    </div>
                </div>
                
                <div id="content-area" align="center">
                    <img src="resources/images/bomi7.jpg" style="width: 350px;">
                    <br><br>
                    <textarea id="content-text" cols="123" rows="10">내용을 입력 하세요.</textarea>
                    <div id="content-report">
                    <a href="" style="color: gray;">신고하기</a>
                    </div>
                </div>
                <hr style="border: solid 1px rgb(179, 178, 178); width: 980px;">
                
                <div id="reply-area" style="overflow-y: scroll;">
                    <div id="reply-bar">
                        <div id="reply-img">
                            <img src="resources/images/reply2.png" style="width: 35px;" alt="">
                        </div>
                        <input type="text" id="reply-input" placeholder="댓글 내용을 입력해 주세요.">
                        <div id="reply-btn">
                            <button class="btn btn-md" style="background-color: rgb(107, 171, 213); color: white; font-weight: bolder; width: 95px;">답변</button>
                        </div>
                    </div>
                    <div id="reply-writer">
                        <img id="reply-img" src="resources/images/user.png" style="width: 30px; height: 30px;">
                        <a href="" id="reply-nick"  style="color: rgb(107, 171, 253);">보미 강사</a>
                        <div id="reply-content-area">
                            <p id="reply-content" cols="100">학생 문의주셔서 감사합니다^^ 아령은 필수입니다. 궁금증은 해결 되셨을까요? </p>
                            <div id="btn-box">
                                <a href="">수정</a>
                                <a href="">삭제</a>
                            </div>
                        </div>
                    </div>
                    <div id="reply-writer">
                        <img id="reply-img" src="resources/images/user.png" style="width: 30px; height: 30px;">
                        <a href="" id="reply-nick">보미 사랑</a>
                        <div id="reply-content-area">
                            <p id="reply-content" cols="100">어 도움 됐어 고마워~</p>
                            <div id="btn-box">
                                <a href="">수정</a>
                                <a href="">삭제</a>
                            </div>
                        </div>
                    </div>
                    <div id="reply-writer">
                        <img id="reply-img" src="resources/images/user.png" style="width: 30px; height: 30px;">
                        <a href="" id="reply-nick">보미 최고</a>
                        <div id="reply-content-area">
                            <p id="reply-content" cols="100">위에분 너무 건방지시네요.. </p>
                            <div id="btn-box">
                                <a href="">수정</a>
                                <a href="">삭제</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br><br><br><br><br><br>
        </div>
        <jsp:include page="../../common/footerBar.jsp" />
    </div>
</body>

</html>