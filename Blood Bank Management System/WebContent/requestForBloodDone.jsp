<%@page import="com.DBConnection.ConnectionProvider"%>
<%@page import="java.sql.* " %>

<%

String mobilenumber = request.getParameter("mobilenumber");

try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("update bloodrequest set status='completed' where mobilenumber=?");
	ps.setString(1, mobilenumber);
	ps.executeUpdate();
	
	//Now what you will do --
	
//	1. send to SEND-EMAIL.jsp file where you will write a code to send the email to user who has 
//	   requested for blood.
//	2. And further from that SEND-EMAIL.jsp file you can redirect the user to "requestForBlood.jsp" .//
	
	
	
	
	response.sendRedirect("requestForBlood.jsp");
}
catch(Exception e){
	
	response.sendRedirect("requestForBlood.jsp");
}

%>


