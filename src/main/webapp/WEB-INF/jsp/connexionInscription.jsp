<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Connexion</title>

</head>
<body>
	
	<%@ include file="navBarNico.jsp" %>
	
	<h1> Page Inscription / Connexion</h1>
	<br>
	

	<div class="container">
		<div class="row">
				<div class="col-5">
					<form style="border: solid" action="ConnectionFormController" method="post">
						<h3 class="text-center">Connexion</h3>
						<label>Mail :</label>
						<input type="text" name="mail" required><br>
						
						<label>Pass :</label>
						<input type="text" name="pass" required><br>
						<div class="row">
							<div class="col text-center">
								<input type="submit">
							</div>
						</div>
					</form>
				</div>


              <section id="registration" class="section" style="border:solid">
              <h3 class="text-center">Inscription</h3>
                <div class="container tagline">
                    <em>Register User</em><br/>
                    <form:form method="post" action="/enregistrerClient" modelAttribute="nouveauclient" >
                       <label>Prénom</label> <form:input path="prenom" type="text" />
                        <form:errors path="prenom" cssClass="error"/>
                        <br/>
                        <label>Nom</label> <form:input path="nom" type="text" />
                        <form:errors path="nom" cssClass="error"/>
                        <br/>
                        <label>First Email</label> <form:input path="email" type="email" />
                        <form:errors path="email" cssClass="error"/>
                        <br/>
                        <label>Téléphone</label> <form:input path="telephone" type="text" />
                        <form:errors path="telephone" cssClass="error"/>
                        <br/>
                        <label>Login</label> <form:input path="login" type="text" />
                        <form:errors path="login" cssClass="error"/>
                         <br/>
                         <label>Mot de passe</label> <form:input path="motDePasse" type="text" />
                         <form:errors path="motDePasse" cssClass="error"/>
                         <br/>
                          <input type="submit" value="Submit" id="submit">
                    </form:form>
                </div>
              </section>

                    </div>
                </div>
            </div>

    </div>
</div>
	
	
	<br>
	
	
	
	
	<%@ include file="footer.jsp" %>
</body>
</html>