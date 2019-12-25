<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/bootstrap.min.js"></script>
<title>Alien List</title>
</head>
<body>
	<div class="container">
	
	<h2 class="text-danger">${message}</h2>
	<br style="line-height: 10px" />
                        <table  class="table table-striped">
                            <thead>
                                <tr class="text-info">
                                    <td>#</td>
                                    <td>Name</td>
                                    <td>Technology</td>
                                    <td></td>
                                </tr>
                            </thead>
                                <c:forEach var="alien" items="${alienList}">
                                <c:set var="classSucess" value=""/>
                                <c:if test ="${idAlien == alien.aid}">                        	
                                    <c:set var="classSucess" value="info"/>
                                </c:if>
                                <tr class="${classSucess}">
                                    <td>
                                        <a href="/getAlien?aid=${alien.aid}">${alien.aid}</a>
                                    </td>                                    
                                    <td>${alien.aname}</td>
                                    <td>${alien.tech}</td> 
                                    <td><a href="#" id="remove" 
                                           onclick="document.getElementById('action').value = 'remove';document.getElementById('idEmployee').value = '${alien.aid}';
                                                    
                                                    document.getElementById('employeeForm').submit();"> 
                                            <span class="glyphicon glyphicon-trash"/>
                                        </a>
                                                   
                                    </td>
                                
                                </tr>
                            </c:forEach>    
              
                        </table>
                        
                        <br style="line-height: 20px" />
                        <form action="goHome" role="form" data-toggle="validator">
                       
                        <div class="form-group col-xs-4">
				<button type="submit" class="btn btn-primary  btn-md">Home</button>
				</div>
				</form>

	 
	
	</div>
</body>
</html>