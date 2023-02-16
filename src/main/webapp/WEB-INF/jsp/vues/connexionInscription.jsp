<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Connexion</title>

</head>
<body>
	
	<%@ include file="../components/navBar.jsp" %>
<main>
 <div class="container">
    <div class="row">
        <form:form class="login-form col-lg-5" method="post" action="/seConnecter" modelAttribute="client">
          <h2>Connexion</h2>
          <div class="form-group">
            <label for="email">Adresse email :</label>
            <form:input type="email" path="email" required="true"/>
          </div>
          <div class="form-group">
            <label for="password">Mot de passe :</label>
            <form:input type="password" path="motDePasse" required="true"/>
          </div>
          <button type="submit" class="submit-button">Se connecter</button>
        </form:form>

         <form:form class="register-form col-lg-5" method="post" action="/enregistrerClient" modelAttribute="client" >
          <h2>Inscription</h2>
          <div class="form-group">
            <label for="nom">Nom :</label>
            <form:input path="nom" type="text" />
            <form:errors path="nom" cssClass="error"/>
          </div>
          <div class="form-group">
            <label for="prenom">Prénom :</label>
            <form:input path="prenom" type="text" />
            <form:errors path="prenom" cssClass="error"/>
          </div>
          <div class="form-group">
            <label for="email">Email :</label>
            <form:input path="email" type="text" />
            <form:errors path="email" cssClass="error"/>
          </div>
          <div class="form-group">
              <label for="telephone">Téléphone :</label>
              <form:input path="telephone" type="text" />
              <form:errors path="telephone" cssClass="error"/>
          </div>
          <div class="form-group">
            <label for="login">Login :</label>
            <form:input path="login" type="text" />
            <form:errors path="login" cssClass="error"/>
          </div>
          <div class="form-group">
            <label for="password">Mot de passe :</label>
            <form:input path="motDePasse" type="password" />
            <form:errors path="motDePasse" cssClass="error"/>
          </div>
          <button class="submit-button" type="submit">S'inscrire</button>
        </form:form>
    </div>
 </div>
</main>
<div class="fixed-bottom">
	<%@ include file="../components/footer.jsp" %>
</div>
</body>
</html>