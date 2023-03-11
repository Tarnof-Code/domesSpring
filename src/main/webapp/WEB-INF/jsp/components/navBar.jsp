<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
<meta charset="ISO-8859-1">
<title>navBar</title>
<script src="https://kit.fontawesome.com/a41e9403cf.js" crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:400,700&amp;display=swap">

<link rel="stylesheet" href="/css/style.css"/>

</head>




<header>
	<nav class="navbar navbar-expand-lg fixed-top bg-nav" id="mainNav">
		<div class="container">
			<a href="/accueil">
			<img alt="Domes Logo" src="/images/Logo.png" class="logo" />
			
			</a>
			<div class="searchContainer">
			
				<div class="searchBarContainer">
					<input type="text" placeholder="Recherchez votre animal" class="searchBar" />
					<input type="submit" value="valider" class="bouton">
				</div>
				
				
				<div class="filters">
						<div class="dropdown" style="width:100%">
							<button class="btn btn-light dropdown-toggle"
							    type="button"
								id="catégories" data-bs-toggle="dropdown"
								aria-expanded="false">
								Catégories
							</button>
							<ul class="dropdown-menu" aria-labelledby="catégories">
								<li><a class="dropdown-item" href="#">Chiens</a></li>
								<li><a class="dropdown-item" href="#">Chats</a></li>
								<li><a class="dropdown-item" href="#">Poissons</a></li>
								<li><a class="dropdown-item" href="#">Reptiles</a></li>
								<li><a class="dropdown-item" href="#">Oiseaux</a></li>
							</ul>
						</div>
						

						
				</div>
			</div>

			<button data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				class="navbar-toggler navbar-toggler-right" type="button"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation" style="background: #FF8B00">
				<i class="fa fa-bars"></i>
			</button>
			
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto ">
				    <li class="nav-item"><a class="nav-link" href="/accueil">Catalogue</a></li>
				    <c:if test="${clientConnecte!=null}">
					    <li class="nav-item"><a class="nav-link" href="/panier?id=${clientConnecte.id}">Mon panier</a></li>
					</c:if>
					<c:if test="${clientConnecte==null}">
					    <li class="nav-item"><a class="nav-link" href="/connexionInscription">S'inscrire/Se connecter</a></li>
                    </c:if>
                    <c:if test="${clientConnecte!=null}">
                        <li class="nav-item"><a class="nav-link" href="/compte">Compte de ${clientConnecte.prenom}</a></li>
                    </c:if>
					<li class="nav-item"><a class="nav-link" href="/aide">AIDE</a></li>
				</ul>
			</div>

		</div>
	</nav>
	<div>

	</div>
</header>
	


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
	</script>
	
	

