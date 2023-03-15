<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Connexion</title>

</head>
<body>
	
	<%@ include file="../components/navBar.jsp" %>
<main>
 <div style="height:2rem"></div>
 <div class="container">
    <div class="row">
        <form:form class="login-form col-10 col-lg-5" method="post" action="/seConnecter" modelAttribute="client">
          <h2>Connexion</h2>
          <div class="form-group">
            <form:input placeholder="Email" type="email" path="email" required="true"/>
          </div>
          <div class="form-group">
            <form:input placeholder="Mot de passe" type="password" path="motDePasse" required="true"/>
          </div>
          <div>
             <p class="error text-center">${erreurConnexion}</p>
          </div>
          <button type="submit" class="submit-button">Se connecter</button>
        </form:form>

         <form:form class="register-form col-10 col-lg-5" method="post" action="/enregistrerClient" modelAttribute="client" >
          <h2>Inscription</h2>
          <div class="form-group">
             <div>
                <form:input placeholder="Nom" path="nom" type="text" />
             </div>
             <div>
                <form:errors path="nom" cssClass="error"/>
             </div>
          </div>
          <div class="form-group">
              <div>
                <form:input placeholder="Prénom" path="prenom" type="text" />
              </div>
              <div>
                <form:errors path="prenom" cssClass="error"/>
              </div>
          </div>
          <div class="form-group">
              <div>
                <form:input placeholder="Email" path="email" type="email" />
                <p class="error">${message}</p>
              </div>
              <div>
                <form:errors path="email" cssClass="error"/>
              </div>
          </div>
          <div class="form-group">
            <div>
              <form:input placeholder="Téléphone" path="telephone" type="text" />
            </div>
            <div>
              <form:errors path="telephone" cssClass="error"/>
            </div>
          </div>
          <div class="form-group">
            <div>
              <form:input placeholder="Mot de passe" path="motDePasse" type="password" />
            </div>
            <div>
              <form:errors path="motDePasse" cssClass="error"/>
            </div>
          </div>
          <button class="submit-button" type="submit">S'inscrire</button>
        </form:form>
    </div>
 </div>
 <div style="height:10rem"></div>
</main>
    <%@ include file="../components/footer.jsp" %>
</body>
</html>