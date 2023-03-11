<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>


<div class="d-flex flex-column justify-content-start ml-3">
</div>
<div class="product">
        <div class="container">
          <div class="row">
              <div class="col-lg-4 text-center" >
                    <img src="${animalSelection.photo}" alt="${animalSelection.race}">
                    <div class="prix" >
                        <span class="prixAnimal">${animalSelection.prix} €</span>
                    </div>
                    <div class="icons-wrapper" >
                        <i class="fas fa-heart"></i>

                        <a href="/ajouterPanier?id=${animalSelection.id}">
                            <c:if test="${clientConnecte==null}">
                                <i class="fas fa-shopping-cart"></i>
                            </c:if>
                            <c:if test="${clientConnecte != null}">
                                <c:set var="isInPanier" value="false" />
                                <c:forEach var="animal" items="${listePanier}">
                                    <c:if test="${animal.id == animalSelection.id}">
                                        <c:set var="isInPanier" value="true" />
                                    </c:if>
                                </c:forEach>
                                <c:choose>
                                    <c:when test="${isInPanier}">
                                        <i class="fas fa-shopping-cart" style="color:red"></i>
                                    </c:when>
                                    <c:otherwise>
                                        <i class="fas fa-shopping-cart"></i>
                                    </c:otherwise>
                                </c:choose>
                            </c:if>
                        </a>
                    </div>
              </div>
              <div class="col-lg-8" >
                   <h2>${animalSelection.nom}</h2>
                   <h4>Catégorie: ${animalSelection.categorie.categorie}</h4>
                   <h4>Race: ${animalSelection.race}</h4>
                  <p>${animalSelection.description}</p>
              </div>
          </div>
        </div>
</div>
<script src="/js/script.js"></script>