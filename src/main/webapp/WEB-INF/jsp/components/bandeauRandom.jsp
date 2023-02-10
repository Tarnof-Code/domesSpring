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
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700&amp;display=swap">
<link rel="stylesheet" href="/css/style.css"/>
</head>


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
