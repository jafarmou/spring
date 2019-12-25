<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/bootstrap.min.js"></script>
<title>Home</title>
</head>
<body>

<div class="container">
		<form action="showAliens" role="form" data-toggle="validator">

			<h2>Show Aliens</h2>
			<div class="form-group col-xs-4">
			<br style="line-height: 10px" />
				<button type="submit" class="btn btn-primary  btn-md">Aliens</button>
			</div>
		</form>
	</div>
	<br></br>
	<div class="container">
		<form action="addAlien" role="form" data-toggle="validator">

			<h2>Add New Alien</h2>
			<div class="form-group col-xs-4">
				<label for="aname" class="control-label col-xs-4">Name:</label>
				<input type="text" name="aname" class="form-control" value="${alien.aname}" required="true" />
				<br style="line-height: 10px" />
				<label for="tech" class="control-label col-xs-4">Technology:</label>
				<input type="text" name="tech" class="form-control" value="${alien.tech}" required="true" />
				<br style="line-height: 10px" />
				<button type="submit" class="btn btn-primary  btn-md">ADD</button>
			</div>
		</form>
	</div>
	<br></br>
	<div class="container">
		<form action="getAlien" role="form" data-toggle="validator">

			<h2>Get Alien</h2>
			<div class="form-group col-xs-4">
				<label for="aid" class="control-label col-xs-4">Alien ID:</label>
				<input type="text" name="aid" class="form-control" value="${alien.aid}" required="true" />
				<br style="line-height: 10px" />
				<button type="submit" class="btn btn-primary  btn-md">GET</button>
			</div>
		</form>
	</div>
</body>
</html>