<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>   
<!DOCTYPE html>
<html lang="en">
    <head>
    	<c:import url="common/header.jsp"></c:import>
        <title>HostMdy Exam Result</title>
        <script type="text/javascript">
		
	</script>
    </head>
    <body>
        <!-- Responsive navbar-->
        <c:import url="common/nav.jsp"></c:import>
        
        <!-- Page content-->
        <div class="container mt-5">
                <table id="resultTable" class="table table-striped" style="width:100%">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Major</th>
                            <th>SeatNo</th>
                            <th>Name</th>
                            <th>Date</th>
                            <th>GPA</th>
                            <th>Qualify</th>
                            <c:if test="${user.role == 'admin' }">
                         
                         	<th>Actions</th>
                         
                        	</c:if>
                            
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach var="result" items="${resultList}">
                    	
                    	<c:url var="editLink" value ="result">
                    	<c:param name="mode" value="LOAD"></c:param>
                    	<c:param name="id" value="${result.id }"></c:param>
                    	
                    	</c:url>
                    	<c:url var="deleteLink" value ="result">
                    	<c:param name="mode" value="DELETE"></c:param>
                    	<c:param name="id" value="${result.id }"></c:param>
                    	
                    	</c:url>
                        <tr>
                        	<td>${result.id }</td>
                            <td>${result.major }</td>
                            <td>${result.seatNo }</td>
                            <td>${result.name }</td>
                            <td>${result.date }</td>
                            <td>${result.gpa }</td>
                            <td><c:choose>
								<c:when test="${result.qualify }">
								*Qualified</c:when>
								<c:otherwise>-</c:otherwise>
							</c:choose>
							</td>
							<c:if test="${user.role == 'admin' }">

							<td>
							
								<a href="${editLink}" class="btn btn-primary">Edit</a>
								<a  href="${deleteLink}" class="btn btn-danger" onclick="return confirm('Are you sure to delete!')">Delete</a>
							</td>
								</c:if>
                        </tr>
                        
                        </c:forEach>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>ID</th>
                            <th>Major</th>
                            <th>SeatNo</th>
                            <th>Name</th>
                            <th>Date</th>
                            <th>GPA</th>
                            <th>Qualify</th>
                            <c:if test="${user.role == 'admin' }">
                         	<th>Actions</th>
                            </c:if>
                        </tr>
                    </tfoot>
                </table>
           
        </div>
        <c:import url="common/footer.jsp"></c:import>

	
	
	<script>
	$(document).ready(function() {
			$('#resultTable').DataTable();
		});
	</script>
	
	
</body>
</html>
