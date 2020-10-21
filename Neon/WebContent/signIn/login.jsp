<%@ page import = "java.sql.*" %>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/neondb","Neha","0987ns");
	/*Connection con;
	Statement st=con.createStatement();
	st.executeUpdate("insert into user (username,password) values('"+username+"','"+password+"')");
	st.executeUpdate("insert into user (username,password) values('"+username+"','"+password+"')");
	response.sendRedirect("save.html");*/
	PreparedStatement ps = con.prepareStatement("insert into user(username, password) values(?,?);");
    ps.setString(1,username);
    ps.setString(2,password);
    /*ps.setString(3,gender);
    ps.setString(4,email);
    ps.setString(5,password);
    ps.setString(6,number);*/
    int x = ps.executeUpdate();
    if (x>0)
    {
    	out.println("Registration done successfully..");
    }
    else
    {
    	out.println("Registration failed..");
    }
}catch(Exception e){
	//System.out.println(e);//response.sendRedirect("error.html");
	out.println(e);
}
%>
