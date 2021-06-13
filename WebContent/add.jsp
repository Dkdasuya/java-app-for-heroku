<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dkdasuya.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-light navbar-expand-md">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Brand</a>
			<button data-toggle="collapse" data-target="#navcol-1"
				class="navbar-toggler">
				<span class="sr-only">Toggle navigation</span><span
					class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navcol-1">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active" href="#">First
							Item</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Second
							Item</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Third
							Item</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<%
		ListProvider lp = new ListProvider();
		ArrayList<ListObject> list = lp.provideList();
		for (ListObject li : list) {
		%>
		<div class="card">
			<div class="card-body">
				<h4 class="card-title"><%=li.title %></h4>
				<h6 class="text-muted card-subtitle mb-2"><%=li.subtitle %></h6>
				<p class="card-text"><%=li.content %></p>
				<a class="card-link" href="#">Link</a><a class="card-link" href="#">Link</a>
			</div>
		</div>

		<%
		}
		%>
	</div>
</body>
</html>

