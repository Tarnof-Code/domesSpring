<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accueil</title>
<link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    crossorigin="anonymous"
>
<link rel="stylesheet" href="/css/style.css"/>
</head>


<body>
	<%@ include file="navBarNico.jsp" %>
<h1> DOMES SERVICES</h1>

<h2>Ils vous attendent...</h2>




<div class="d-flex justify-content-center">
<c:if test="${!empty(listeAleatoire)}">
  <c:forEach var="animal" items="${listeAleatoire}">
          <div class="bandeauItem" >
            <img class="card-img-top bandeauImg" src="${animal.photo}" alt="Card image cap">
            <div class="card-body">
            <h5>${animal.nom}</h5>
            <p class="bandeauDescription">${animal.description}</p>
            </div>
          </div>
     </c:forEach>
 </c:if>
 </div>



<h2>Nos catégories</h2>

<div class="d-flex justify-content-center">

          <div class="bandeauItem" >
            <img class="card-img-top bandeauImg" src="/images/categories/chiens.jpg" alt="Card image cap">
            <div class="card-body">
            <h5>CHIENS</h5>
            </div>
          </div>

          <div class="bandeauItem" >
              <img class="card-img-top bandeauImg" src="/images/categories/chats.jpg" alt="Card image cap">
              <div class="card-body">
              <h5>CHATS</h5>
              </div>
          </div>

          <div class="bandeauItem" >
              <img class="card-img-top bandeauImg" src="/images/categories/poissons.jpg" alt="Card image cap">
              <div class="card-body">
              <h5>POISSONS</h5>
              </div>
            </div>

            <div class="bandeauItem" >
                <img class="card-img-top bandeauImg" src="/images/categories/reptiles.jpg" alt="Card image cap">
                <div class="card-body">
                <h5>REPTILES</h5>
                </div>
            </div>

          <div class="bandeauItem" >
              <img class="card-img-top bandeauImg" src="/images/categories/oiseaux.jpg" alt="Card image cap">
              <div class="card-body">
              <h5>OISEAUX</h5>
              </div>
          </div>



    </div>




	<br><br>



	<!--  DEBUT DES DIFFERENTES CATEGORIES !!! Après ça il n'y a que le footer -->
	<h3> Section : LES DIFFERENTES CATEgories [ A revoir ]</h3>
	<div class="container">
		<h4>Les Chiens</h4>
		<div class="row">
			<div class="col">
					<article style="border: dashed;">
						<a href="produit">Un article !</a>
						<br>
						<span>Nom</span>
						<p>Description</p>
						<button class="btn">Like</button>
						<button class="btn">Ajouter</button>
					</article>
			</div>
		</div>
		<div class="row">
			<div class="col">
					<article style="border: dashed;">
						<a href="produit">Un article !</a>
						<br>
						<span>Nom</span>
						<p>Description</p>
						<button class="btn">Like</button>
						<button class="btn">Ajouter</button>
					</article>
			</div>
		</div>
		<div class="row">
			<div class="col">
					<article style="border: dashed;">
						<a href="produit">Un article !</a>
						<br>
						<span>Nom</span>
						<p>Description</p>
						<button class="btn">Like</button>
						<button class="btn">Ajouter</button>
					</article>
			</div>
		</div>
		<div class="row">
			<div class="col text-center">
				<button>EN VOIR PLUSSSSSSSS</button>
			</div>
		</div>
	</div><!--  FIN DES CHIENS ICI  -->

	<div class="container">
		<h4>Les CHATS</h4>
		<div class="row">
			<div class="col">
					<article style="border: dashed;">
						<a href="produit">Un article !</a>
						<br>
						<span>Nom</span>
						<p>Description</p>
						<button class="btn">Like</button>
						<button class="btn">Ajouter</button>
					</article>
			</div>
		</div>
		<div class="row">
			<div class="col">
					<article style="border: dashed;">
						<a href="produit">Un article !</a>
						<br>
						<span>Nom</span>
						<p>Description</p>
						<button class="btn">Like</button>
						<button class="btn">Ajouter</button>
					</article>
			</div>
		</div>
		<div class="row">
			<div class="col">
					<article style="border: dashed;">
						<a href="produit">Un article !</a>
						<br>
						<span>Nom</span>
						<p>Description</p>
						<button class="btn">Like</button>
						<button class="btn">Ajouter</button>
					</article>
			</div>
		</div>
		<div class="row">
			<div class="col text-center">
				<button>EN VOIR PLUSSSSSSSS</button>
			</div>
		</div>
	</div><!--  FIN DES CHATS ICI  -->

	<div class="container">
		<h4>Les Poissons</h4>
		<div class="row">
			<div class="col">
					<article style="border: dashed;">
						<a href="produit">Un article !</a>
						<br>
						<span>Nom</span>
						<p>Description</p>
						<button class="btn">Like</button>
						<button class="btn">Ajouter</button>
					</article>
			</div>
		</div>
		<div class="row">
			<div class="col">
					<article style="border: dashed;">
						<a href="produit">Un article !</a>
						<br>
						<span>Nom</span>
						<p>Description</p>
						<button class="btn">Like</button>
						<button class="btn">Ajouter</button>
					</article>
			</div>
		</div>
		<div class="row">
			<div class="col">
					<article style="border: dashed;">
						<a href="produit">Un article !</a>
						<br>
						<span>Nom</span>
						<p>Description</p>
						<button class="btn">Like</button>
						<button class="btn">Ajouter</button>
					</article>
			</div>
		</div>
		<div class="row">
			<div class="col text-center">
				<button>EN VOIR PLUSSSSSSSS</button>
			</div>
		</div>
	</div><!--  FIN DES POISSONS ICI  -->

	<div class="container">
		<h4>Les OISEAUX</h4>
		<div class="row">
			<div class="col">
					<article style="border: dashed;">
						<a href="produit">Un article !</a>
						<br>
						<span>Nom</span>
						<p>Description</p>
						<button class="btn">Like</button>
						<button class="btn">Ajouter</button>
					</article>
			</div>
		</div>
		<div class="row">
			<div class="col">
					<article style="border: dashed;">
						<a href="produit">Un article !</a>
						<br>
						<span>Nom</span>
						<p>Description</p>
						<button class="btn">Like</button>
						<button class="btn">Ajouter</button>
					</article>
			</div>
		</div>
		<div class="row">
			<div class="col">
					<article style="border: dashed;">
						<a href="produit">Un article !</a>
						<br>
						<span>Nom</span>
						<p>Description</p>
						<button class="btn">Like</button>
						<button class="btn">Ajouter</button>
					</article>
			</div>
		</div>
		<div class="row">
			<div class="col text-center">
				<button>EN VOIR PLUSSSSSSSS</button>
			</div>
		</div>
	</div><!--  FIN DES OISEAUX ICI  -->

	<div class="container">
		<h4>Les REPTILES</h4>
		<div class="row">
			<div class="col">
					<article style="border: dashed;">
						<a href="produit">Un article !</a>
						<br>
						<span>Nom</span>
						<p>Description</p>
						<button>Like</button>
						<button>Ajouter</button>
					</article>
			</div>
		</div>
		<div class="row">
			<div class="col">
					<article style="border: dashed;">
						<a href="produit">Un article !</a>
						<br>
						<span>Nom</span>
						<p>Description</p>
						<button>Like</button>
						<button>Ajouter</button>
					</article>
			</div>
		</div>
		<div class="row">
			<div class="col">
					<article style="border: dashed;">
						<a href="produit">Un article !</a>
						<br>
						<span>Nom</span>
						<p>Description</p>
						<button>Like</button>
						<button>Ajouter</button>
					</article>
			</div>
		</div>
		<div class="row">
			<div class="col text-center">
				<button>EN VOIR PLUSSSSSSSS</button>
			</div>
		</div>
	</div><!--  FIN DES REPTILES ICI  -->

	<%@ include file="footer.jsp" %>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>