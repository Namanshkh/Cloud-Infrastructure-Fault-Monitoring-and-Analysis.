<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="com.mongodb.MongoClient" %>
<%@ page import ="com.mongodb.DBCollection" %>
<%@ page import ="com.mongodb.DBCursor" %>
<%@ page import ="com.mongodb.DBObject" %>   
<%@ page import ="com.mongodb.Mongo" %>
<%@ page import ="java.net.UnknownHostException" %>
<%@ page import ="com.mongodb.DB" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
color:red;
}
</style>
</head>
<body >

<%
MongoClient mongoClient=new MongoClient("localhost",27017);
DB db=mongoClient.getDB("admin");
DBCollection coll=db.getCollection("mycollection");
DBCursor cursor=coll.find();
while(cursor.hasNext())
{
	int i=1;
	out.println(cursor.next());
	i++;
	
}
	
System.out.println("Connection Established Successfully");

%>


</body>
</html>
