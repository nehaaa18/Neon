<%@ page import = "java.sql.*" %>
<%
String username = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");
String rep_pass = request.getParameter("password2");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/neondb","Neha","0987ns");
	Statement st=con.createStatement();
	st.executeUpdate("insert into signup (username,email,password,repeat_password) values('"+username+"','"+email+"','"+password+"','"+rep_pass+"')");
	//st.executeUpdate("insert into user (username,password) values('"+username+"','"+password+"')");
	response.sendRedirect("../html/save.html");

  
}catch(Exception e){
	//response.sendRedirect("../html/error.html");
	out.println(e);
}
%>
