<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link rel="stylesheet" href="/css/styles.css">
	<title>LASER Airlines</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/shared/barraNavegacion.jsp"></jsp:include>

		<div class="container mt-4 mb-4">
		    <div class="row">
			    <div class="col-md-6">
			<h1>Linea Aerea</h1>
			<h1>LASER Airlines</h1>
					
					<div class="card">
						<div class="card-header bg-secondary text-white" >
						<h3 class="card-title"> Login </h3>
					</div>
					<div class="card-body">
					<form action="/login" method="post">
						<div class="form-group">
							<label for="username" class="font-weight-bold">Username: </label>
							<input type="text" id="username" name="username" class="form-control">
						</div>
						<div class="form-group">
							<label for="password" class="font-weight-bold">Password: </label>
							<input type="password" id="password" name="password" class="form-control">
						</div>
						<div class="form-group">
							<input type="hidden"  name="${_csrf.parameterName}" value="${_csrf.token}">
						</div>
						<div class="form-group">
						<button type="submit" class="btn btn-secondary">Iniciar Sesion</button>
						</div>
							
					</form>
						<c:if test="${param.error != null }">
						<div class="col-sm">
						<div class="alert alert-danger alert-dismissible" role="alert">
									<strong>Datos Incorrectos, volver a ingresar</strong> ${error}
									<c:remove var="mensaje"/>
								</div>
							</div>
						</c:if>
					</div>
			
					</div>
					
				    </div>
			    	<div class="col-md-6">
			    	<!--Carrousel mostrando flota de aviones-->                
	                <div id="carousel" class="carousel slide" data-ride="carousel">
	                    
	                	<!--Indicadores-->
	                	<ul class="carousel-indicators"> 
	                    <li data-target="#carousel" data-slide-to="0" class="active"></li>
	                    <li data-target="#carousel" data-slide-to="1"></li>
	                    <li data-target="#carousel" data-slide-to="2"></li>
	                    </ul>
	                    
	                    <!--Imagenes-->
	                    <div class="carousel-inner" >
	                        <div class="carousel-item active">
	                            <img src="/img/avion1.jpg" alt="Flota de aviones" width="500" height="400">
	                        </div>
	                        <div class="carousel-item">
	                            <img src="/img/avion2.jpg" alt="Flota de aviones" width="500" height="400">
	                        </div>
	                        <div class="carousel-item">
	                            <img src="/img/avion3.jpg" alt="Flota de aviones" width="500" height="400">
	                        </div>                 
	                    </div>
	    
	                    <!--Controles para desplazamiento IZQ DER-->
	                    <a class="carousel-control-prev" href="#carousel" data-slide="prev">
	                        <span class="carousel-control-prev-icon"></span>
	                    </a>
	                    <a class="carousel-control-next" href="#carousel" data-slide="next">
	                        <span class="carousel-control-next-icon"></span>
	                    </a>
	                 </div>
			        </div>
		     
		    </div>
	    </div>
	    
	    <jsp:include page="/WEB-INF/views/shared/footer.jsp"></jsp:include>
	
	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>


</body>
</html>