<%@ page  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"  %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.net.URL" %>
<html>
<head>
</head>

<body>
<% 
String account = request.getParameter("account");
String password = request.getParameter("password");
StringBuffer url = new StringBuffer();
//out.println("account : " +account);
//out.println("password : " + password);


url.append("http://10.15.1.232/cgh/servlet/IMMISWebService?divisionNo=004&functionName=GetUserInfo&user_id=");
//url.append("http://10.19.10.46:9080/cgh/servlet/IMMISWebService?divisionNo=001&functionName=GetUserInfo&user_id=");
url.append(account);
url.append("&user_password=");
url.append(password);
String loginURL= url.toString();

/*String url = "http://10.19.10.46:9080/cgh/servlet/IMMISWebService?divisionNo=001&functionName=GetUserInfo&user_id=316982&user_password=MTIzNDU2";*/
URL obj = new URL(loginURL);
HttpURLConnection con = (HttpURLConnection) obj.openConnection();

/*int responseCode = con.getResponseCode();
out.println("\nSending 'GET' request to URL : " +loginURL);
out.println("Response Code : " + responseCode);*/

BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));
String inputLine;
StringBuffer response1 = new StringBuffer();

while ((inputLine = in.readLine()) != null) {
      response1.append(inputLine);
}
in.close();

 //print result
%>

 <information>
 <% out.println(response1.toString()); %>
 </information>


</body>
</html>