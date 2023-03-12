// Récupération des icônes
const heartIcons = document.querySelectorAll('.fa-heart');
const inCartIcons = document.querySelectorAll('.inCart');
const notInCartIcons = document.querySelectorAll('.notInCart');
// Récupérer l'élément du badge
const badge = document.querySelector('.cart-count');
let cartCount = badge.getAttribute('data-cartCount');
cartCount = parseInt(cartCount, 10)
badge.textContent = cartCount

// Ajout d'un événement "click" à chaque icône
heartIcons.forEach((heartIcon) => {
  let heartClicked = false;
  heartIcon.addEventListener('click', () => {
    if (!heartClicked) {
      heartIcon.style.color = 'red';
      heartClicked = true;
    } else {
      heartIcon.style.color = '#999';
      heartClicked = false;
    }
    console.log("Like")
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








