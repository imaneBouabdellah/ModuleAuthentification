<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<c:url value="/css/style.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
<c:url value="/css/icofont.css" var="icofont" />
<link href="${icofont}" rel="stylesheet" />
<c:url value="/css/themify-icons.css" var="themify-icons" />
<link href="${themify-icons}" rel="stylesheet" />
<c:url value="/css/bootstrap.min.css" var="bootstrap" />
<link href="${bootstrap}" rel="stylesheet" />

	
		
<c:url value="/js/common-pages.js" var="commonPages" />
<script type="text/javascript"
		src="${commonPages}"></script>		

<c:url value="/image/background.jpg" var="background" />
<c:url value="/image/sqlia.jpg" var="sqlia" />
<c:url value="/image/SQLI.jpg" var="SQLI" />
</head>
<body style="background-image: url('${background}');">
 <!--<div class="col-sm-3 col-md-6 col-lg-4 col-xl-2 bg-success"> </div>-->
 <div class="col-sm-9 col-md-6 col-lg-8 col-xl-10 bg-warning" >${Message}</div>



<section class="login p-fixed d-flex text-center bg-primary common-img-bg" style="image: inherit;display: contents;">

<div class="container-fluid">
<div class="row">
<div class="col-sm-12">

<div class="signup-card card-block auth-body mr-auto ml-auto" id="wrapper" style="width: 30%;margin: 50px auto; padding: 50px;">
<form action="/enregistrer" method="post" class="md-float-material" style="width: 203%;margin-left: -52%;margin-top: 19%;" onsubmit="return Validate()" name="vform">
<div class="text-center" >
<img src="${sqlia}" alt="sqlia.jpg"  style="   width: 20%;">
</div>
<div class="auth-box">
<div class="row m-b-20">
<div class="col-md-12">
<h3 class="text-center txt-primary">Espace d'inscription</h3>
</div>
</div>
<hr />
<div class="input-group" id="username_div">
<input type="text" class="form-control" value="${admin.nom}" name="nom" placeholder="Choisir un Nom" pattern="^[a-zA-Zàâäéèêëçùûüôö]{2,}$" required >
<span class="md-line"></span>
 <div id="name_error">${validatorNom}</div>
</div>
<div class="input-group" id="email_div">
<input type="text" class="form-control" value="${admin.prenom}" name="prenom" placeholder="Choisir un Prenom" pattern="^[a-zA-Zàâäéèêëçùûüôö]{2,}$" required>
<span class="md-line"></span>
 <div id="prenom_error">${validatorPrenom}</div>
</div>
<div class="input-group">
<input type="email" name="email" class="form-control"  value="${admin.email}" placeholder="Votre E-mail"  required>
<span class="md-line"></span>
 <div id="email_error">${validatorEmail}</div>
</div>
<div class="input-group" id="password_div">
<input type="password" class="form-control"  value="${admin.motDePasse}" name="motDePasse" placeholder="Choisir Mot de Passe"  required>
<span class="md-line"></span>
</div>
<div class="input-group" id="pass_confirm_div">
<input type="password" class="form-control" name="password_confirm"  placeholder="Confirmer Mot de Passe"  required>
<span class="md-line"></span>
</div>
<div id="password_error" style="color: red;"></div>
<div class="row m-t-30">
<div class="col-md-12">
<button type="submit" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20"  >S'inscrire</button>
</div>
</div>
<hr />
<div class="row">
<div class="col-md-2" style="margin-left: 464px;">
<img src="${SQLI}" alt="SQLI.jpg" style="width: 100%;height: 100%;margin-right: -67%">
</div>
</div>
</div>
</form>

</div>

</div>

</div>

</div>

</section>
 

	<c:url value="/js/bootstrap.min.js" var="bootstrapMinJs" />
	<script type="text/javascript"
		src="${bootstrapMinJs}"></script>

<script>
//var username = document.forms['vform']['nom'];
//var email = document.forms['vform']['email'];
var password = document.forms['vform']['motDePasse'];
var password_confirm = document.forms['vform']['password_confirm'];
// SELECTING ALL ERROR DISPLAY ELEMENTS
var password_error = document.getElementById('password_error');

function Validate() {
  // check if the two passwords match
  if (password.value != password_confirm.value) {
    password.style.border = "1px solid red";
    document.getElementById('pass_confirm_div').style.color = "red";
    password_confirm.style.border = "1px solid red";
    password_error.innerHTML = "The two passwords do not match";
    return false;
  }
}
</script>
<!--  
<section class="login p-fixed d-flex text-center bg-primary common-img-bg" style="image: inherit;display: contents;">

<div class="container-fluid" class="col-sm-3 col-md-6 col-lg-10 col-xl-12" >
<div class="row">
<div class="col-sm-12">

<div class="signup-card card-block auth-body mr-auto ml-auto">
<form class="md-float-material" style="width: 203%;margin-left: -52%;margin-top: 19%;">
<div class="text-center">
<img src="${sqlia}" alt="sqlia.jpg"  style="   width: 20%;">
</div>
<div class="auth-box">
<div class="row m-b-20">
<div class="col-md-12">
<h3 class="text-center txt-primary">Espace d'inscription</h3>
</div>
</div>
<hr />
<div class="input-group">
<input type="text" name="nom" class="form-control" placeholder="Choisir un Nom" required>
<span class="md-line"></span>
</div>
<div class="input-group">
<input type="text" name="prenom" nameclass="form-control" placeholder="Choisir un Prenom" required>
<span class="md-line"></span>
</div>
<div class="input-group">
<input type="email" name="email" class="form-control" placeholder="Votre E-mail" maxlength="10" required>
<span class="md-line"></span>
</div>
<div class="input-group">
<input type="password" name="motDePasse" class="form-control" placeholder="Choisir Mot de Passe" required>
<span class="md-line"></span>
</div>
<div class="input-group">
<input type="password" name="confirmMotDePasse"class="form-control" placeholder="Confirmer Mot de Passe" required>
<span class="md-line"></span>
</div>
<div class="row m-t-30">
<div class="col-md-12">
<button class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20" type="submit" >S'inscrire</button>
</div>
</div>
<hr />
<div class="row">
<div class="col-md-2" style="margin-left: 464px;">
<img src="${SQLI}" alt="SQLI.jpg" style="width: 100%;height: 100%;margin-right: -122%">
</div>
</div>
</div>
</form>

</div>

</div>

</div>

</div>

</section>

	<c:url value="/js/bootstrap.min.js" var="bootstrapMinJs" />
	<script type="text/javascript"
		src="${bootstrapMinJs}"></script>
</body>-->
</html>