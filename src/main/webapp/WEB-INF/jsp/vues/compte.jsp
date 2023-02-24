<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mon Compte</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body class="bg-light">
	<%@ include file="../components/navBar.jsp" %>
<main>
	<div class="container">
		<div class="row">
			<div class="col-4 bg-secondary">
					<h2>MON COMPTE</h2>
					<form>
						<label>Nom</label>
						<input type="text">
						<br>
						
						<label>Prénom</label>
						<input type="text">
						<br>
						
						<label>Num</label>
						<input type="text">
						<br>
						
						<label>Adresse</label>
						<input type="text">
						<br>
						
						<label>Mail</label>
						<input type="text">
						<br>
						
						<label>MDP</label>
						<input type="text">
						<br>
					</form>
			</div>
			
			
			
			<div class="col-4">
					<h2>MES COMMANDES</h2>
					<input type="search" placeholder="Recherche parmis les commandes..">
					<button type="submit">Search</button>
					<ul>
						<li>
							<img>IMG
							<h5>NOM</h5>
							<p>Date de livraison -- </p>
							<span>Icon = fleche</span>
						</li>
						<li>
							<img>IMG
							<h5>NOM</h5>
							<p>Date de livraison -- </p>
							<span>Icon = fleche</span>
						</li>
					</ul>
			</div>
			
			
			
			<div class="col-4 bg-secondary">
					<h2>MES COMPAGNONS FAVORIS</h2>
					<input type="search" placeholder="Recherche parmis les commandes..">
					<button type="submit">Search</button>
					A travailler
			</div>
		</div>
	</div>
	
	
	
	
	
	
	<div>
		<h3>POP UP DUNE COMMANDE</h3>
		<p>Numero de commande</p>
		<p></p>
	</div>
</main>
</body>
</html>