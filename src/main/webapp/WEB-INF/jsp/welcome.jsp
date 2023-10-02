<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
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
	Welcome ${userId} to my Site !!
	<div class="container center_div">
		<div class="position-absolute top-50 start-50 translate-middle ">
			<div class="row justify-content-center align-items-center">

				<div class="row clearfix">
					<div class="col-md-12 col-md-offset-7 column">


						<div class="row">
							<form method="get" action="/products/getProduct">
								<div class="form-group">
									<span>
										<h4>Enter Details</h4>
									</span>

								</div>

								<div class="form-group ">
									<label>Colour</label> <input type="text" id="colour"
										name="colour" class="form-control">
								</div>
								<br>

								<div class="form-group ">
									<label>Size</label> <input type="text" id="size" name="size"
										class="form-control">
								</div>
								<br>

								<div class="form-group ">
									<label>Gender</label> <input type="text" id="gender"
										name="gender" class="form-control">
								</div>
								<br>


								<div>Output Preference</div>

								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="input1"> <label
										class="form-check-label" for="flexRadioDefault1"> Sort
										by price </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="input2" checked> <label
										class="form-check-label" for="flexRadioDefault2"> Sort
										by rating </label>
								</div>
								<br>

								<div class="form-group ">

									<br>
									<button type="submit" class="btn btn-success">Submit</button>
								</div>
							</form>
						</div>
</body>
</html>