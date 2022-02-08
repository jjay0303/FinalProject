<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    .reveiwOuter{
        width: 650px;
        margin:auto;
        margin-top: 20px;
        margin-bottom: 100px;
        box-sizing: border-box;
    }
    #imgZone>img{
        margin-right: 10px;
    }
    .bestReview{
        display: inline-block;
        width: 300px; 
        height: 250px;
    }
</style>
</head>
<body>
    <div class="reviewOuter">
        
        <p style="color: #6babd5; font-weight: bold;">실제 수강생 후기</p>
        <br>

        <div id="starZone" align="center">
            <img src="resources/images/star.png" width="30px" height="30px">
            <img src="resources/images/star.png" width="30px" height="30px">
            <img src="resources/images/star.png" width="30px" height="30px">
            <img src="resources/images/star.png" width="30px" height="30px">
            <img src="resources/images/star.png" width="30px" height="30px">
            <span><b>4.9</b></span>
            <span style="color: gray; font-size: 12px;">총 40개</span>
            
            <button type="button" class="btn" style="background-color: lightgray; width: 120px; font-size: 13px; height: 30px; line-height: 10px; margin-left: 50px;" data-toggle="modal" data-target="#reviewModal">후기 작성하기</button>
        </div>
        <br>

        <div id="imgZone" align="center">
            <img src="" width="100px" height="100">
            <img src="" width="100px" height="100">
            <img src="" width="100px" height="100">
            <img src="" width="100px" height="100">
            <img src="" width="100px" height="100">
            <hr>
        </div>
        <br>

        <div id="reviewZone">
            <div class="reviewContent1">
                <div class="bestReview">
                    <div class="profile">
                        <div style="float:left; margin-right: 10px;">
                            <img src="" width="50px" height="50px">
                        </div>
                        <div>
                            <div style="font-weight: bold;">김하나</div>
                            <div style="display: flex;">
                                <div style="margin-right: 5px;">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                </div>
                                <div style="font-size: 13px; color: gray; line-height: 27px;">2022년 01월 01일</div>
                            </div>
                        </div>
                    </div>
    
                    <div class="reviewContent" style="margin-top: 10px;">
                        <pre style="width:100%; height:150px;">
    이것은리뷰내용입니다
    길게길게 써보는중~
    여러
    줄
    작
    성
    시
    옆에 스크롤~
                        </pre>
                    </div>
    
                    <div class="reivewFooter" style="font-size: 13px;">
                        <span>댓글 0</span>
                        <span>
                            <img src="resources/images/like.png" width="15" height="15">
                            0
                        </span>
                        <span style="float:right">신고하기</span>
                    </div>
                </div>
    
                <div class="bestReview" style="float: right;">
                    <div class="profile">
                        <div style="float:left; margin-right: 10px;">
                            <img src="" width="50px" height="50px">
                        </div>
                        <div>
                            <div style="font-weight: bold;">김하나</div>
                            <div style="display: flex;">
                                <div style="margin-right: 5px;">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                </div>
                                <div style="font-size: 13px; color: gray; line-height: 27px;">2022년 01월 01일</div>
                            </div>
                        </div>
                    </div>
    
                    <div class="reviewContent" style="margin-top: 10px;">
                        <pre style="width:100%; height:150px;">
    이것은리뷰내용입니다
    길게길게 써보는중~
    여러
    줄
    작
    성
    시
    옆에 스크롤~
                        </pre>
                    </div>
    
                    <div class="reivewFooter" style="font-size: 13px;">
                        <span>댓글 0</span>
                        <span>
                            <img src="resources/images/like.png" width="15" height="15">
                            0
                        </span>
                        <span style="float:right">신고하기</span>
                    </div>
                </div>
            </div>
            
            <div class="reviewContent2" style="margin-top: 30px;">
                <div class="bestReview">
                    <div class="profile">
                        <div style="float:left; margin-right: 10px;">
                            <img src="" width="50px" height="50px">
                        </div>
                        <div>
                            <div style="font-weight: bold;">김하나</div>
                            <div style="display: flex;">
                                <div style="margin-right: 5px;">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                </div>
                                <div style="font-size: 13px; color: gray; line-height: 27px;">2022년 01월 01일</div>
                            </div>
                        </div>
                    </div>
    
                    <div class="reviewContent" style="margin-top: 10px;">
                        <pre style="width:100%; height:150px;">
    이것은리뷰내용입니다
    길게길게 써보는중~
    여러
    줄
    작
    성
    시
    옆에 스크롤~
                        </pre>
                    </div>
    
                    <div class="reivewFooter" style="font-size: 13px;">
                        <span>댓글 0</span>
                        <span>
                            <img src="resources/images/like.png" width="15" height="15">
                            0
                        </span>
                        <span style="float:right">신고하기</span>
                    </div>
                </div>
    
                <div class="bestReview" style="float: right;">
                    <div class="profile">
                        <div style="float:left; margin-right: 10px;">
                            <img src="" width="50px" height="50px">
                        </div>
                        <div>
                            <div style="font-weight: bold;">김하나</div>
                            <div style="display: flex;">
                                <div style="margin-right: 5px;">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                    <img src="resources/images/star.png" width="12px" height="12px">
                                </div>
                                <div style="font-size: 13px; color: gray; line-height: 27px;">2022년 01월 01일</div>
                            </div>
                        </div>
                    </div>
    
                    <div class="reviewContent" style="margin-top: 10px;">
                        <pre style="width:100%; height:150px;">
    이것은리뷰내용입니다
    길게길게 써보는중~
    여러
    줄
    작
    성
    시
    옆에 스크롤~
                        </pre>
                    </div>
    
                    <div class="reivewFooter" style="font-size: 13px;">
                        <span>댓글 0</span>
                        <span>
                            <img src="resources/images/like.png" width="15" height="15">
                            0
                        </span>
                        <span style="float:right">신고하기</span>
                    </div>
                </div>
            </div>
            <br><br>

            <div class="allReview">
                <button type="button" class="btn" style="background-color: #6babd5; width: 100%; color: white;">모든 리뷰 보기</button>
                <!-- 버튼 누르면 새창 띄워지게 -->
            </div>    

        </div>
    </div>

    <!-- 글 작성하기시 보여질 modal -->
    <div id="reviewModal" class="modal fade" role="dialog">
        <form action="" method="post">
            <div class="modal-dialog">
        
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">글 작성하기</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <input type="file" name="thumbnail">
                        <textarea style="width: 100%; height: 200px; resize: none; margin-top: 10px;" placeholder="내용을 작성해주세요."></textarea>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn" data-dismiss="modal" style="background-color: #6babd5;">작성</button>
                        <button type="button" class="btn" data-dismiss="modal" style="background-color: lightgray;">취소</button>
                    </div>
                </div>
        
            </div>
        </form>
    </div>

</body>
</html>