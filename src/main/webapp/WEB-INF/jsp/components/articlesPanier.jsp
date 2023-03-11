<c:if test="${empty(listePanier)}">
<p>Votre panier est vide<p>
</c:if>

<c:if test="${!empty(listePanier)}">
<c:forEach var="animal" items="${listePanier}">
   <div  >
                       <div class="row articles" >
                            <div class="col-5">
                                <img src="${animal.photo}" class="bandeauImg" style="max-width:150px">
                            </div>

                            <div class="col-4 text-center d-flex flex-column justify-content-center" >
                              <H3>${animal.nom}</H3>
                              <p>${animal.race}</p>
                              <h6>${animal.prix} euros</h6>
                              <p class="en-savoir-plus"><a href="/produit?id=${animal.id}">En savoir plus</a></p>
                            </div>


                            <div class="col-2 d-flex align-items-center justify-content-center mx-auto" >
                              <div class="icons-wrapper" >
                                     <a href="/supprimerDuPanier?id=${animal.id}">
                                        <i class="fas fa-trash-alt" style="max-width:100%"></i>
                                     </a>
                              </div>
                            </div>
                       </div>
                  </div>
</c:forEach>
</c:if>


   <div style="height:20px"></div>
   <div class="row total-panier" >
        <div class="col-3 total-panier-elt">
            <p style="font-size:20px ;text-align:center">TOTAL : </p>
        </div>
        <div class="col-3 total-panier-elt" >
            <p class="prix-panier">${prixTotal} EUR</p>
        </div>
        <div class="col-5 total-panier-elt"  >
            <button class="submit-button" style="margin:0;max-width:100%">Acheter maintenant</button>
        </div>
   </div>