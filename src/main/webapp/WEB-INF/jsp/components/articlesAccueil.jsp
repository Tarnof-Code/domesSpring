<meta charset="ISO-8859-1">
<title>navBar</title>
<script src="https://kit.fontawesome.com/a41e9403cf.js" crossorigin="anonymous"></script>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700&amp;display=swap">
<link rel="stylesheet" href="/css/style.css"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>




<div class="row d-flex justify-content-start" >

   <c:if test="${!empty(listeCategories)}">
      <c:forEach var="categorie" items="${listeCategories}">
           <div id="${categorie.categorie}" style="height:120px"></div>
           <div>
                <h2 class="text-center">LES ${categorie.categorie}</h2>

           </div>
           <c:forEach var="animal" items="${categorie.listAnimaux}">
               <div class="col-12 col-lg-6" >
                    <div class="row articles">
                         <div class="col-5">
                             <img src="${animal.photo}" class="bandeauImg" style="max-width:150px">
                         </div>

                         <div class="col-4 text-center d-flex flex-column justify-content-center">
                           <H3>${animal.nom}</H3>
                           <p>${animal.race}</p>
                           <h6>${animal.prix} euros</h6>
                           <p class="en-savoir-plus"><a href="/produit?id=${animal.id}">En savoir plus</a></p>
                         </div>

                         <div class="col-1 d-flex align-items-center mx-2">
                            <div class="icons-wrapper" >
                                   <c:if test="${clientConnecte==null}">
                                       <a href="/connexionInscription">
                                       <i class="fas fa-heart"></i>
                                       </a>
                                   </c:if>
                                   <c:if test="${clientConnecte != null}">
                                       <c:set var="isInFavoris" value="false" />
                                       <c:forEach var="animalFav" items="${listeFavoris}">
                                           <c:if test="${animalFav.id == animal.id}">
                                               <c:set var="isInFavoris" value="true" />
                                           </c:if>
                                       </c:forEach>
                                       <a href="#" class="ajouter-favoris" data-id="${animal.id}"  >
                                           <c:choose>
                                               <c:when test="${isInFavoris}">
                                                   <i class="fas fa-heart inFav" style="color:red" data-isInFavoris="${isInFavoris}"></i>
                                               </c:when>
                                               <c:otherwise>
                                                   <i class="fas fa-heart notInFav" ></i>
                                               </c:otherwise>
                                           </c:choose>
                                       </a>
                                   </c:if>
                            </div>
                         </div>

                         <div class="col-1 d-flex align-items-center">
                            <div class="icons-wrapper" >
                                   <c:if test="${clientConnecte==null}">
                                       <a href="/connexionInscription">
                                       <i class="fas fa-shopping-cart"></i>
                                       </a>
                                   </c:if>
                                   <c:if test="${clientConnecte != null}">
                                       <c:set var="isInPanier" value="false" />
                                       <c:forEach var="animalCart" items="${listePanier}">
                                           <c:if test="${animalCart.id == animal.id}">
                                               <c:set var="isInPanier" value="true" />
                                           </c:if>
                                       </c:forEach>
                                       <a href="#" class="ajouter-panier" data-id="${animal.id}"  >
                                           <c:choose>
                                               <c:when test="${isInPanier}">
                                                   <i class="fas fa-shopping-cart inCart" style="color:red" data-isInPanier="${isInPanier}"></i>
                                               </c:when>
                                               <c:otherwise>
                                                   <i class="fas fa-shopping-cart notInCart" ></i>
                                               </c:otherwise>
                                           </c:choose>
                                       </a>
                                   </c:if>
                            </div>
                         </div>

                    </div>
               </div>
           </c:forEach>

      </c:forEach>
   </c:if>

</div>



<script src="/js/script.js">
    let isInPanier = ${isInPanier};
    let isInFavoris =${isInFavoris};
</script>




