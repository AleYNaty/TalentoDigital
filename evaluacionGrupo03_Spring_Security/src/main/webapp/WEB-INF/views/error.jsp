<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
					<h1>¡Ha ocurrido un error! o Usted no tiene acceso a esta Pagina.</h1>
						<div class="form-group">
							<button onclick="window.location.href='/home'" class="btn btn-secondary">Volver al Inicio</button>
						</div>
			    </div>
		    	<div class="col-md-6">
		    	
		    	<img src="/img/error.jpg" alt="Flota de aviones" width="500" height="400">
		    	
		    	
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