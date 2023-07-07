<%@page import="com.DBConnection.ConnectionProvider"%>
<%@page import="java.sql.* " %>

<%
	String id = request.getParameter("id");

	try{
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps = con.prepareStatement("delete from donor where id=?");
		ps.setString(1, id);
		ps.executeUpdate();
		
		response.sendRedirect("editDeleteList.jsp?msg=deleted");
		
	}
	catch(Exception e){
		System.out.println(e);
		response.sendRedirect("editDeleteList.jsp?msg=Invalid");
	}
%>