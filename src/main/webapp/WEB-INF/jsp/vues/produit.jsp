<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Page produit</title>
<link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    crossorigin="anonymous"
>
</head>
<body>
	<%@ include file="../components/navBar.jsp" %>

<main>

	<div class="container">
		<div class="row">
			<div class="col-12 col-lg-8">
			    <div style="height:20px"></div>
				<%@ include file="../components/ficheProduit.jsp" %>
			</div>
			<div class="col-0 col-lg-1"></div>
			<div class="col-12 col-lg-3" >
                <%@ include file="../components/aside.jsp" %>
			</div>
		</div>
	  </div>
	</div>
</main>



<div style="height:16rem"></div>
    <%@ include file="../components/footer.jsp" %>
</body>
</html>