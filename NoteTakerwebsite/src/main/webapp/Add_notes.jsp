<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Notes</title>
<%@include file="All_css_js.jsp"%>
</head>
<body>
  <div class="container-fluid ">
    <%@include file="navbar.jsp"%>
    
    <h1>Please fill your Notes Details</h1>
    
  <!--   add notes form -->
  <form action="SaveNoteServlate " method="post" >
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required  name="title" type="text" class="form-control" id="title" 
     placeholder="Enter Title here"/>
   
  </div>
  <div class="content">
   <label for="title">Note Content</label>
   <textarea required name="content"
    id="content" placeholder="Enter Content here"
   class="form-control"
   style="height:300px;"
   ></textarea>
  </div>
  <br>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">ADD</button>
  </div>
</form>
    
    
    </div>

</body>
</html>