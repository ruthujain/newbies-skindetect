<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add User</title>
</head>
<body>
<%
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String password = request.getParameter("password");

// JDBC connection parameters
String url = "jdbc:mysql://localhost:3306/skin_disease";
String dbUser = "root";
String dbPassword = "RuthvikaB2004*";

// JDBC variables
Connection conn = null;
PreparedStatement ps = null;

try {
    // Establishing database connection
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection(url, dbUser, dbPassword);

    // Query to insert user data
    String sql = "INSERT INTO USERS (fname, lname, email, password) VALUES (?, ?, ?, ?)";
    ps = conn.prepareStatement(sql);
    ps.setString(1, fname);
    ps.setString(2, lname);
    ps.setString(3, email);
    ps.setString(4, password);

    // Executing the statement
    int rowsInserted = ps.executeUpdate();
    if (rowsInserted > 0) {
        out.println("A new user has been inserted successfully!");
        response.sendRedirect("index.html");
    } else {
        out.println("Failed to insert user.");
    }
} catch (Exception e) {
    e.printStackTrace();
    out.println("Error: " + e.getMessage());
} finally {
    // Closing the resources
    if (ps != null) try { ps.close(); } catch (Exception e) { e.printStackTrace(); }
    if (conn != null) try { conn.close(); } catch (Exception e) { e.printStackTrace(); }
}
%>
</body>
</html>
