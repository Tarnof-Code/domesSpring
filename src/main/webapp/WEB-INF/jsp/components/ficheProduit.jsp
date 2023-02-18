<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<div class="d-flex flex-column justify-content-start ml-3">

</div>
<div class="product">
        <div class="container">
          <div class="row">
              <div class="col-lg-4 text-center" >
                    <img src="<c:out value="${animalSelection.photo}" />" alt="${animalSelection.race}">
                    <div class="prix" >
                        <span class="prixAnimal"><c:out value="${animalSelection.prix}"/> €</span>
                    </div>
                    <div class="icons-wrapper" >
                        <i class="far fa-heart"></i>
                        <i class="fas fa-shopping-cart"></i>
                    </div>
              </div>
              <div class="col-lg-8" >
                   <h2><c:out value="${animalSelection.nom}" /></h2>
                   <h4>Catégorie: <c:out value="${animalSelection.categorie.categorie}" /></h4>
                   <h4>Race: <c:out value="${animalSelection.race}" /></h4>
                  <p><c:out value="${animalSelection.description}" /></p>
              </div>
          </div>
        </div>
</div>