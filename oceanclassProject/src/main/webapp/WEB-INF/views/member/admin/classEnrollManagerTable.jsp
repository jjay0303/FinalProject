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
    .classList{
        width: 1000px;
        margin: auto;
    }
    .classList th, .classList td{
        text-align: center;
    }
    #pagingArea{
		width:fit-content;
		margin:auto;
		margin-top: 150px;
		margin-bottom: 50px;
	}
</style>
</head>
<body>
    <div>
        <div align="right">
            <select style="width:150px; height: 30px;">
                <option>신청일 빠른순</option>
                <option>신청일 느린순</option>
            </select>
        </div>
        <br>

        <div>
            <!-- 
                생각해보니까 여러개를 반려하면 반려 이유를 쓸 수가 없기 때문에
                클래스 목록이 보여지는 상태에서는 반려는 못하게 하는게 맞는듯?
                승인만 할 수 있게 하기!
            -->
            <button type="button" class="btn btn-info" style="background-color: #6babd5; width: 80px;">승인</button>
            <!--
            <button type="button" class="btn" style="background-color: lightgray; width: 80px;">반려</button>
            -->
            <div style="float: right;">
                <input type="checkbox" id="rClass">
                <label for="rClass"> 반려된 클래스</label>
                <input type="checkbox" id="yClass">
                <label for="yClass"> 처리된 클래스</label>
                <input type="checkbox" id="nClass" checked>
                <label for="nClass"> 미처리 클래스</label>
            </div>
        </div>
        <br>
    </div>

    <div>
        <table class="table table-hover classList">
            <thead>
                <tr style="background-color: #6babd5;">
                    <th><input type="checkbox"></th>
                    <th>카테고리</th>
                    <th>클래스명</th>
                    <th>강사명</th>
                    <th>가격</th>
                    <th>신청일</th>
                    <th>처리상태</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>드로잉</td>
                    <td>클래스명1</td>
                    <td>강사명1</td>
                    <td>12,000</td>
                    <td>2022-01-05</td>
                    <td>N</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>드로잉</td>
                    <td>클래스명1</td>
                    <td>강사명1</td>
                    <td>12,000</td>
                    <td>2022-01-05</td>
                    <td>N</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>드로잉</td>
                    <td>클래스명1</td>
                    <td>강사명1</td>
                    <td>12,000</td>
                    <td>2022-01-05</td>
                    <td>N</td>
                </tr>
            </tbody>
        </table>
    </div>

    <div id="pagingArea">
        <ul class="pagination">
            <li class="page-item"><a class="page-link" href="">Previous</a></li>
    
            <li class="page-item"><a class="page-link" href="">1</a></li>
            <li class="page-item"><a class="page-link" href="">2</a></li>
            <li class="page-item"><a class="page-link" href="">3</a></li>

            <li class="page-item"><a class="page-link" href="">Next</a></li>
        </ul>
    </div>
</body>
</html>