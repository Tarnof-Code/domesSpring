<h2 class="text-center" style="color:#FF8B00">Mes favoris</h2>
<div class="mt-3">
  <c:if test="${empty(listeFavoris)}">
    <p class="text-center">Vous n'avez pas de favoris</p>
  </c:if>
  <c:if test="${!empty(listeFavoris)}">
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 mb-2">
        <c:forEach var="animal" items="${listeFavoris}">
             <div class="col mb-3">
                <a href="/produit?id=${animal.id}" target="_blank" class="d-block text-center">
                    <img src="${animal.photo}" class="img-fluid mb-1" style="max-width:100%; border-radius:20%;">
                    <h3 class="h6">${animal.nom}</h3>
                </a>
            </div>
        </c:forEach>
    </div>
  </c:if>
</div>
