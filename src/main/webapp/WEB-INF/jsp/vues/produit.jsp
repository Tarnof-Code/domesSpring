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
		    <div style="height:20px"></div>
			<div class="col-8">
					<div class="product">
                      <img src="<c:out value="${animalSelection.photo}" />" alt="Nom du produit">
                      <h2><c:out value="${animalSelection.nom}" /></h2>
                      <p><c:out value="${animalSelection.description}" /></p>
                      <div class="prix">
                        <span class="nouveau-prix"><c:out value="${animalSelection.prix}" />€</span>
                      </div>
                        <div class="icons-wrapper">
                            <i class="far fa-heart"></i>
                            <i class="fas fa-shopping-cart"></i>
                        </div>
                    </div>
			</div>
			
			<div class="col-4">
                <%@ include file="../components/aside.jsp" %>
			</div>
		</div>
	  </div>

	</div>
</main>
	
	
	
<div class="fixed-bottom">
	<%@ include file="../components/footer.jsp" %>
</div>
</body>
</html>