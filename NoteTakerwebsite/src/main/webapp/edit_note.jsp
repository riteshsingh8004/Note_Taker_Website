<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>edit notes page</title>
<%@include file="All_css_js.jsp" %>

</head>
<body>

 <div class="container-fluid ">
    <%@include file="navbar.jsp"%>
    <h1>Edit your notes:</h1>
  <%
    int noteId=Integer.parseInt(request.getParameter("note_id").trim());
  Session s=FactoryProvider.getfacory().openSession();
  
  Note note=(Note)s.get(Note.class, noteId);
  s.close();
    %>
     <form action="EditNoteServlate " method="post" >
      <input value="<%= note.getId()%>" name="noteId" type="hidden"/>
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required  name="title" type="text" class="form-control" id="title" 
     placeholder="Enter Title here"
     value="<%= note.getTitle() %>"/>
   
  </div>
  <div class="content">
   <label for="title">Note Content</label>
   <textarea required name="content"
    id="content" placeholder="Enter Content here"
   class="form-control"
   style="height:300px;"
   ><%= note.getContent() %></textarea>
  </div>
  <br>
  <div class="container text-center">
  <button type="submit" class="btn btn-success">Update</button>
  </div>
</form>
    
  
  
    
    
    
  


</body>
</html>