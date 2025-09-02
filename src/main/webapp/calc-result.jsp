<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    double result = 0;

    boolean isSuccess = true;
    String errorMessage = "";

    double num1 = 0;
    double num2 = 0;
    String operator = "";

    try {
        String num1_str = request.getParameter("num1");
        String num2_str = request.getParameter("num2");
        operator = request.getParameter("operator");

        if (num1_str == null || num1_str.isEmpty() || num2_str == null || num2_str.isEmpty()) {
            throw new Exception("숫자를 모두 입력해주세요.");
        }

        num1 = Double.parseDouble(num1_str);
        num2 = Double.parseDouble(num2_str);

        switch (operator) {
            case "+":
                result = num1 + num2;
                break;
            case "-":
                result = num1 - num2;
                break;
            case "*":
                result = num1 * num2;
                break;
            case "/":
                if (num2 == 0) {
                    throw new Exception("0으로 나눌 수 없습니다.");
                }
                result = num1 / num2;
                break;
            default:
                throw new Exception("유효하지 않은 연산자입니다.");
        }

    } catch (NumberFormatException e) {
        isSuccess = false;
        errorMessage = "유효한 숫자를 입력해주세요.";
    } catch (Exception e) {
        isSuccess = false;
        errorMessage = e.getMessage();
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>계산 결과</title>
    <style>
        body { font-family: sans-serif; text-align: center; }
        .container {
            width: 350px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #28a745;
            border-radius: 8px;
        }
        .result { font-size: 24px; font-weight: bold; margin: 20px 0; }
        .error { font-size: 20px; font-weight: bold; color: red; }
    </style>
</head>
<body>
<div class="container">
    <h2>계산 결과</h2>

    <% if (isSuccess) { %>
    <div class="result">
        <%= String.format("%.2f %s %.2f = %.2f", num1, operator, num2, result) %>
    </div>
    <% } else { %>
    <div class="error">
        <%= errorMessage %>
    </div>
    <% } %>

    <hr>
    <a href="calculator.jsp">다시 계산하기</a>
</div>
</body>
</html>