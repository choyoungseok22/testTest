<%
// FourRules.jsp
String str1     = request.getParameter("NUM1"); // 첫 번째 입력 값
String str2     = request.getParameter("NUM2"); // 두 번째 입력 값
 
// 계산을 하기 위해서 전송받은 문자를 숫자로 변경하여 저장한다.
int      num1   = Integer.parseInt(str1);
int      num2   = Integer.parseInt(str2);

// request에 전송할 변수를 만들고 값을 저장한다. (가져오는 것은 get, 보내는 것은 set)
request.setAttribute("PLUS",       new Integer(num1 + num2));
request.setAttribute("MINUS",      new Integer(num1 - num2));
request.setAttribute("MULTIPLY",   new Integer(num1 * num2));
request.setAttribute("DIVIDE",     new Integer(num1 / num2)); 

RequestDispatcher dispatcher = request.getRequestDispatcher("FourRulesResult.jsp"); // 넘어갈 페이지
dispatcher.forward(request, response);
%>
