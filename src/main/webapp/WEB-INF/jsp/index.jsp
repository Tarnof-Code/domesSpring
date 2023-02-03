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


<div class="container " style="border: solid red">

 <div class="carouselContainer d-flex justify-content-center" style="border: dashed" >
      <h1>Ils vous attendent...</h1>
      <div id="demo" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner" >
          <div class="carousel-item active">
            <img src="/images/animaux/chiens/bob.png" alt="Carrousel slide 1" class="d-block w-50 ">
            <h2>Bob</h2>
            <p>Shiba</p>
          </div>
          <div class="carousel-item">
            <img src="/images/animaux/chiens/kikou.png" alt="Carrousel slide 2" class="d-block w-50">
            <h2>Kikou</h2>
            <p>Cavalier King Charles</p>
          </div>
          <div class="carousel-item">
            <img src="/images/animaux/chiens/yoshi.png" alt="Carrousel slide 3" class="d-block w-50">
            <h2>Yoshi</h2>
             <p>Bouvier de l'Entlebuch</p>
          </div>
        </div>
      </div>
    </div>


	
	<div class="container">
		<div class="row text-center">
		<h3>Nos Catégories [ BUTTON CLICABLE POUR FILTRER LES CATégories]</h3>
			<div class="col">
					<button>Les Chiens</button>
					<button>Les Chats</button>
					<button>Les Poissons</button>
					<button>Les Reptiles</button>
					<button>Les Oiseaux</button>
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