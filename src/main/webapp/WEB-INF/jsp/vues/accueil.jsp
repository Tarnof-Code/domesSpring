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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"> </script>
<link rel="stylesheet" href="/css/style.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"> </script>
</head>


<body>
	<%@ include file="../components/navBar.jsp" %>

<div class="mainContainer">
<br><br>
<div class="sectionContainer">
    <h2>Ils vous attendent...</h2>
    <div class="d-flex justify-content-center">
        <c:if test="${!empty(listeAleatoire)}">
          <c:forEach var="animal" items="${listeAleatoire}">
                  <div class="bandeauItem" >
                    <img class="card-img-top bandeauImg" src="${animal.photo}" alt="Card image cap">
                    <div class="card-body">
                    <h5>${animal.nom}</h5>
                    <p class="more text-center">En savoir plus</p>
                  </div>
                  </div>
             </c:forEach>
         </c:if>
     </div>
</div>
<br><br>
<div class="sectionContainer">
    <h2>Nos catégories</h2>
    <div class="d-flex justify-content-center">
     <c:if test="${!empty(listeCategories)}">
       <c:forEach var="categorie" items="${listeCategories}">
        <div class="bandeauItem" >
            <img class="card-img-top bandeauImg" src="${categorie.photo}" alt="Card image cap">
            <div class="card-body">
            <h5>${categorie.categorie}</h5>
            </div>
         </div>
        </c:forEach>
     </c:if>
    </div>
</div>
	<br><br>

<div class="sectionContainer">
<h2>Les chiens</h2>
      <div class="row">
        <div class="col-md-8">
          <div class="card">
            <div class="card-body">
              <div class="row">
                <div class="col-md-5">
                  <img src="/images/animaux/chiens/bob.png" class="img-fluid bandeauImg">
                </div>
                <div class="col-md-7">
                  <H3>Shiba</H3>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since....
                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since....</p>
                  <h6>2500?</h6>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
</div>


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
</div>
	<%@ include file="../components/footer.jsp" %>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>