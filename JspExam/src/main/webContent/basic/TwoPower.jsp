<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>TwoPower.jsp</title>
</head>
<body>
     <h2>2의 거듭제곱을 알아봅시다.</h2>
     <h3>
     2 ^ 1 = <%=power(2, 1) %><br>
     2 ^ 2 = <%=power(2, 2) %><br>
     2 ^ 3 = <%=power(2, 3) %><br>
     2 ^ 4 = <%=power(2, 4) %><br>
     2 ^ 5 = <%=power(2, 5) %><br>
     2 ^ 6 = <%=power(2, 6) %><br>
     2 ^ 7 = <%=power(2, 7) %><br>
     2 ^ 8 = <%=power(2, 8) %><br>
     2 ^ 9 = <%=power(2, 9) %><br>
     </h3>
     <!-- 선언부 -->
     <!-- method나 변수를 선언시 <%! %> 안에 사용 -->
     <%! 
     private int power(int base, int exponent) {
    	 int result = 1;
    	 for(int cnt = 0; cnt < exponent; cnt++) {
    		 result *= base;
    	 }
    	 return result;
     }
     %> 
</body>
</html>


