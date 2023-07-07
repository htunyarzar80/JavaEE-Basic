<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:import url="common/header.jsp"></c:import>
	<title>Result Register Page</title>
</head>
<body>
<!-- Responsive navbar-->

	<c:import url="common/nav.jsp"></c:import>
	
	<div class="container">
    <form action="result" method="post">
        <h2 class="text-center">Result Registration</h2>
        
        <input type="hidden" name="mode" value="CREATE">
        
        <div class="mb-3">
            <label for="major" class="form-label">*Major</label>
            <input type="text" id="major" name="major" placeholder="Enter Major" class="form-control" required="required" autofocus>
        </div>
        
        <div class="mb-3">
            <label for="year" class="form-label">*Date</label>
            <input type="date" id="Date" name="year" placeholder="Enter Date" class="form-control" required="required" autofocus>
        </div>
        
         <div class="mb-3">
            <label for="seatNo" class="form-label">*SeatNo</label>
            <input type="text" id="seatNo" name="seatNo" placeholder="Enter SeatNo" class="form-control" required="required" autofocus>
        </div>
        
        <div class="mb-3">
            <label for="name" class="form-label">*Name</label>
            <input type="text" id="name" name="name" placeholder="Enter Name" class="form-control" required="required" autofocus>
        </div>
        
         <div class="mb-3">
            <label for="grade" class="form-label">*GPA</label>
            <input type="text" id="gpa" name="gpa" placeholder="Enter GPA" class="form-control" required="required" autofocus>
        </div>
        
         <div class="mb-3 form-check">
      		<input type="checkbox" class="form-check-input" id="qualify" name="qualify" value="true">
      		<label class="form-check-label" for="qualify">*Qualify</label>
    	</div>
        
        <div class="mb-3">
            <div class="col-sm-9 col-sm-offset-3">
                <span class="help-block">*Required fields</span>
            </div>
        </div>
        
       
        
        <button type="submit" class="btn btn-primary">Submit</button>
        <button type="reset" class="btn btn-danger">Reset</button>
    </form> <!-- /form -->
</div> <!-- ./container -->
	
	
	<c:import url="common/footer.jsp"></c:import>
</body>
</html>