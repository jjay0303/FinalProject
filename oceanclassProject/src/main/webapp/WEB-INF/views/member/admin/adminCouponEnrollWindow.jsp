<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰 등록 페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
    .outer{padding: 5px; text-align: center; width: 500px; height: 400px; margin: auto; box-sizing: border-box;}
    
    .outer table{margin-left: 10px; text-align: left; width: 100%; margin-top: 30px; font-size: 14px; border-collapse: separate; line-height: 40px;}
    .outer h4{font-weight: 550; font-size:23px; color: rgb(90, 90, 90);}
    .outer th{text-align: left; padding-left: 20px;}
    .outer tbody td *{height: 40px; width: 80%;}
    .outer input[type="date"]{width: 80%;}
    button[type="submit"]{
        width: 120px; height: 40px; 
        border-radius: 10px; border: none; 
        background: rgb(107, 171, 213); color: white;
        font-size: 16px; font-weight: 550;    
    }
    
</style>

</head>
<body>

	<div class="outer">
        <form action="">
            <table >
                <thead>
                    <tr>
                        <td colspan="2">
                            <h4>쿠폰 등록하기</h4>
                            <hr>
                        </td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>쿠폰명</th>
                        <td>
                            <input type="text" maxlength="20" placeholder="최대 20글자">
                        </td>
                    </tr>
                    <tr>
                        <th>할인율(%)</th>
                        <td>
                            <input type="number">
                        </td>
                    </tr>
                    <tr>
                        <th>유효기간</th>
                        <td>
                            <input type="date" name="" id="">
                        </td>
                    </tr>
                </tbody>
            </table>
            <br>
            <button class="btn" align="center" type="submit">등록하기</button>
        </form>
    </div>
</body>
</html>