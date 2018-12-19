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
    <ul class="nav nav-pills">
        <li class="active"><a href="#tab1" data-toggle="tab">Bu</a></li>
        <li><a href="#tab2" data-toggle="tab">Contrat</a></li>
        <li><a href="#tab3" data-toggle="tab">Rôle</a></li>
        <li><a href="#tab4" data-toggle="tab">En complément</a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="tab1">
        
        <div class="container">
        <h1>Liste BUs</h1>
      <table border="1">
		<thead>
		<th>ID</th><th>Libelle</th>
		</thead>
		<tbody>
		<!-- pour chaque instance p de listeProduits -->
		<c:forEach items="${listeBus}" var="p">
		<tr>
		
		<td>${p.idBu}</td>
		<td>${p.libelle}</td>
		</tr>
		</c:forEach>
	
		</tbody>
		</table>
        
        </div>
        
        </div>
        <div class="tab-pane" id="tab2">
         <div class="container">
          <h1>Liste Sites</h1>
         <table border="1">
		<thead>
		<th>ID</th><th>Libelle</th>
		</thead>
		<tbody>
		<!-- pour chaque instance p de listeProduits -->
		<c:forEach items="${listeSites}" var="p">
		<tr>
		
		<td>${p.idSite}</td>
		<td>${p.libelle}</td>
		</tr>
		</c:forEach>
		</tbody>
		</table>
        
        </div>
        
        </div>
        <div class="tab-pane" id="tab3">Vous pouvez consulter le détail des objectifs pédagogiques</div>
        <div class="tab-pane" id="tab4">Vous pouvez consulter le détail des compléments</div>
      </div>

</div>
</body>
</html>