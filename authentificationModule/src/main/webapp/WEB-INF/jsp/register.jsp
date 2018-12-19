<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>
<div class="container">
	<h1>Inscription</h1>
	 <div class="row">
	 <c:if test="${not empty Message}">
	
	 <div class="col-xs-12 col-sm-6 col-md-8" style="background-color:lavender;">${Message}</div></c:if>
	 </div>
	<form action="/enregistrer" method="post">
		<label for="nom">nom</label><br/>
		<input type="text" name="nom" id="nom" value="${admin.nom}"/><br />
		<label for="Prenom">Prenom</label><br /> 
		<input type="text" name="prenom" id="Prenom" value="${admin.prenom}"/><br />
		<label for="email">Email</label><br /> 
		<input type="text" name="email" id="email" value="${admin.email}"/><br /> 
		<label for="pwd">Password</label><br /> 
		<input type="password" name="motDePasse" id="pwd" value="${admin.motDePasse}"/><br /> 
		<input type="submit" name="register" /><br />
	</form>
	
</div>
</body>
</html>