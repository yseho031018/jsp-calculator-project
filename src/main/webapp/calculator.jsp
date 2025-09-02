<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>간단한 계산기</title>
    <style>
        body { font-family: sans-serif; }
        .container {
            width: 350px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        h2 { text-align: center; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; }
        input[type="number"], select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>JSP 계산기</h2>
    <form action="calc-result.jsp" method="get">
        <div class="form-group">
            <label for="num1">첫 번째 숫자:</label>
            <input type="number" id="num1" name="num1" required>
        </div>

        <div class="form-group">
            <label for="operator">연산자:</label>
            <select id="operator" name="operator">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
            </select>
        </div>

        <div class="form-group">
            <label for="num2">두 번째 숫자:</label>
            <input type="number" id="num2" name="num2" required>
        </div>

        <input type="submit" value="계산하기">
    </form>
</div>

</body>
</html>
