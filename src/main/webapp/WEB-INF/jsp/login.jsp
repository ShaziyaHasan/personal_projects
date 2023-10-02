<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
	integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
	integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
	crossorigin="anonymous"></script>

</head>
<body>
	<div class="container center_div">
		<div class="position-absolute top-50 start-50 translate-middle ">
		<div class="row justify-content-center align-items-center">
		
				<div class="row clearfix">
					<div class="col-md-9 col-md-offset-5 column">


						<div class="row">
							<h5>${errorMsg}</h5>
							<form method="post">
								<div class="form-group">
									<h2>Login</h2>
								</div>

								<div class="form-group ">
									<label>Username</label> <input type="text" id="userId"
										name="userId" class="form-control">
								</div>
								<br>

								<div class="form-group ">
									<label>Password</label> <input type="password" id="password"
										name="password" class="form-control">
								</div>

								<div class="form-group ">

									<br>
									<button type="submit" class="btn btn-success">Login</button>
								</div>
							</form>
						</div>




						<!-- <input type="text" name="userId" placeholder="USER ID" /> <br> <br>
		<input type="password" name="password" placeholder="Password" /> <br>
		<br>
		<button>Submit</button> </form> -->
</body>
</html>