// Récupération des icônes
const inFavIcons = document.querySelectorAll('.inFav');
const notInFavIcons = document.querySelectorAll('.notInFav');
const inCartIcons = document.querySelectorAll('.inCart');
const notInCartIcons = document.querySelectorAll('.notInCart');

// Récupérer l'élément du badge
const badge = document.querySelector('.cart-count');
let cartCount = badge.getAttribute('data-cartCount');
cartCount = parseInt(cartCount, 10)
badge.textContent = cartCount

inFavIcons.forEach((inFavIcon) => {
  let isInFavoris = inFavIcon.getAttribute('data-isInFavoris');
  inFavIcon.addEventListener('click', () => {
  console.log(isInFavoris)
    if (isInFavoris) {
      inFavIcon.style.color = '#999';
      isInFavoris = false;
    } else {
      inFavIcon.style.color = 'red';
      isInFavoris = true;
    }
  });
});

notInFavIcons.forEach((notInFavIcon) => {
  let heartClicked = false;
  notInFavIcon.addEventListener('click', () => {
    if (!heartClicked) {
      notInFavIcon.style.color = 'red';
      heartClicked = true;
    } else {
      notInFavIcon.style.color = '#999';
      heartClicked = false;
    }
  });
});


inCartIcons.forEach((inCartIcon) => {
  let isInPanier = inCartIcon.getAttribute('data-isInPanier');

  inCartIcon.addEventListener('click', () => {
  console.log(isInPanier)
    if (isInPanier) {
      inCartIcon.style.color = '#999';
      isInPanier = false;
      badge.textContent = cartCount -= 1
    } else {
      inCartIcon.style.color = 'red';
      isInPanier = true;
      badge.textContent = cartCount += 1
    }
  });
});

notInCartIcons.forEach((notInCartIcon) => {
  let cartClicked = false;
  notInCartIcon.addEventListener('click', () => {
    if (!cartClicked) {
      notInCartIcon.style.color = 'red';
      cartClicked = true;
      // Mettre à jour la quantité d'éléments dans le panier
      badge.textContent = cartCount += 1
    } else {
      notInCartIcon.style.color = '#999';
      cartClicked = false;
      badge.textContent = cartCount -= 1
    }
  });
});

    // Utilisation de jQuery.noConflict()
    var $j = jQuery.noConflict();

    // Utilisation de la variable $j pour accéder à jQuery
    $j(document).ready(function() {
        $j('.ajouter-panier').click(function(event) {
            event.preventDefault();
            var animalId = $j(this).data('id');
            $j.ajax({
                url: '/ajouterPanier?id=' + animalId,
                type: 'GET',
                success: function(response) {
                    console.log('Opération réussie!');
//                    alert('Votre panier a été mis à jour !');
                },
                error: function(xhr) {
                    alert('Echec de l\'opération !!!');
                }
            });
        });
    });

     $j(document).ready(function() {
            $j('.ajouter-favoris').click(function(event) {
                event.preventDefault();
                var animalId = $j(this).data('id');
                $j.ajax({
                    url: '/ajouterFavoris?id=' + animalId,
                    type: 'GET',
                    success: function(response) {
                        console.log('Opération réussie!');
    //                    alert('Votre panier a été mis à jour !');
                    },
                    error: function(xhr) {
                        alert('Echec de l\'opération !!!');
                    }
                });
            });
        });


// Récupération des éléments HTML
const pencilIcons = document.querySelectorAll('.modif-info');
const submitButton = document.querySelector('.modif-info-button');
const inputFields = document.querySelectorAll('input[readonly]');

// Ajout d'un gestionnaire d'événement pour chaque icône crayon
pencilIcons.forEach((icon, index) => {
  icon.addEventListener('click', () => {
    inputFields[index].readOnly = false;
    inputFields[index].style.borderColor = '#FF8B00';
    icon.style.visibility = 'hidden';
    submitButton.style.display = 'block';


  });
});

// Ajout d'un gestionnaire d'événement pour le bouton "Valider les modifications"
submitButton.addEventListener('click', () => {
  // Remettre tous les champs en lecture seule
  inputFields.forEach(input => {
    input.readOnly = true;
    inputFields[index].style.borderColor = '#ccc';
  });
      pencilIcons.forEach(icon => {
        icon.style.visibility = 'visible';
      });


  // Masquer le bouton de soumission
  submitButton.style.display = 'none';
});

function showMesAdresses() {
         document.getElementById("mesAdresses").style.display = "block";
         document.getElementById("compteInfos").style.display = "none";
     }


