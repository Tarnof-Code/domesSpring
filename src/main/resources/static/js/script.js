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
const submitInfos = document.querySelector('.modif-info-button');
const inputInfos = document.querySelectorAll('.input-infos');
const showAdresseBouton = document.querySelector('.show-adresse-bouton');

// Ajout d'un gestionnaire d'événement pour chaque icône crayon
pencilIcons.forEach((icon, index) => {
  icon.addEventListener('click', () => {
    inputInfos[index].readOnly = false;
    inputInfos[index].style.borderColor = '#FF8B00';
    icon.style.visibility = 'hidden';
    submitInfos.style.display = 'block';
    showAdresseBouton.style.display = 'none';

  });
});

// Ajout d'un gestionnaire d'événement pour le bouton "Valider les modifications"
submitInfos.addEventListener('click', () => {
  // Remettre tous les champs en lecture seule
  inputInfos.forEach(input => {
    input.readOnly = true;
    inputInfos[index].style.borderColor = '#ccc';
  });
      pencilIcons.forEach(icon => {
        icon.style.visibility = 'visible';
      });
  // Masquer le bouton de soumission
  submitInfos.style.display = 'none';
  showAdresseBouton.style.display = 'block';
});

function showMesAdresses() {
         document.getElementById("mesAdresses").style.display = "block";
         document.getElementById("compteInfos").style.display = "none";
         console.log("Je vais vers mes adresses");
     }

function showMesInfos() {
         document.getElementById("mesAdresses").style.display = "none";
         document.getElementById("compteInfos").style.display = "block";
         console.log("Je reviens vers mes infos")
     }

const pencilAdresses = document.querySelectorAll('.modif-adresse');

const nomAdresses = document.querySelectorAll('.text-center.input-adresse');
const inputNumerosVoie = document.querySelectorAll('.input-adresse.numero-voie');
const inputNomsVoie = document.querySelectorAll('.input-adresse.nom-voie');
const inputCodesPostaux = document.querySelectorAll('.input-adresse.code-postal');
const inputVilles = document.querySelectorAll('.input-adresse.ville');

const submitAdresses = document.querySelectorAll('.modif-adresse-button');
const retourInfo = document.querySelector('.retour-info');

pencilAdresses.forEach((icon, index) => {
  icon.addEventListener('click', () => {
    // Rendre le champ "nom" éditable
    nomAdresses[index].readOnly = false;
    inputNumerosVoie[index].readOnly = false;
    inputNomsVoie[index].readOnly = false;
    inputCodesPostaux[index].readOnly = false;
    inputVilles[index].readOnly = false;

    nomAdresses[index].style.backgroundColor = "#FFFFFF";
    inputNumerosVoie[index].style.backgroundColor = "#FFFFFF";
    inputNomsVoie[index].style.backgroundColor = "#FFFFFF";
    inputCodesPostaux[index].style.backgroundColor = "#FFFFFF";
    inputVilles[index].style.backgroundColor = "#FFFFFF";

    pencilAdresses.forEach((icon) => {
      icon.style.display = 'none';
    });

    trashAdresseIcones.forEach((icon) => {
        icon.style.display = 'none';
    });
    ajoutAdresseIcone.style.display = "none"
    nomAdresseToAdd.style.display = "none"

    // Afficher les autres champs de l'adresse
    inputNumerosVoie[index].style.display = 'block';
    inputNomsVoie[index].style.display = 'block';
    inputCodesPostaux[index].style.display = 'block';
    inputVilles[index].style.display = 'block';
    // Afficher le bouton de validation
    submitAdresses[index].style.display = 'block';
    annulerModifBouton[index].style.display = 'block';


    //Cacher le bouton de retour
    retourInfo.style.display = 'none';

  });
});

ajoutAdresseIcone = document.querySelector('.ajout-adresse');
ajoutAdresseBouton = document.querySelector('.ajout-adresse-bouton');
annulerAjoutBouton = document.querySelector('.annuler-ajout-bouton');
trashAdresseIcones = document.querySelectorAll('.suppr-adresse')

const nomAdresseToAdd = document.querySelector('.ajout-nom')
const numeroVoieAdresseToAdd = document.querySelector('.ajout-numero-voie')
const nomVoieAdresseToAdd = document.querySelector('.ajout-nom-voie')
const codePostalAdresseToAdd = document.querySelector('.ajout-code-postal')
const villeAdresseToAdd = document.querySelector('.ajout-ville')

ajoutAdresseIcone.addEventListener('click', () => {
    nomAdresseToAdd.readOnly = false;
    numeroVoieAdresseToAdd.readOnly = false;
    nomVoieAdresseToAdd.readOnly = false;
    codePostalAdresseToAdd.readOnly = false;
    villeAdresseToAdd.readOnly = false;

    nomAdresseToAdd.placeholder = "Entrez un nom pour l\'adresse"
    numeroVoieAdresseToAdd.style.display = 'block';
    nomVoieAdresseToAdd.style.display = 'block';
    codePostalAdresseToAdd.style.display = 'block';
    villeAdresseToAdd.style.display = 'block';
    ajoutAdresseIcone.style.display = 'none';
    ajoutAdresseBouton.style.display = 'block';
    annulerAjoutBouton.style.display = 'block';
    retourInfo.style.display = 'none';
    pencilAdresses.forEach((icon) => {
          icon.style.display = 'none';
        });
    trashAdresseIcones.forEach((icon) => {
        icon.style.display = 'none';
    });
});

annulerAjoutBouton.addEventListener('click', () => {
    nomAdresseToAdd.value = "";
    numeroVoieAdresseToAdd.value = "";
    nomVoieAdresseToAdd.value = "";
    codePostalAdresseToAdd.value = "";
    villeAdresseToAdd.value = "";

    nomAdresseToAdd.readOnly = true;
    numeroVoieAdresseToAdd.readOnly = true;
    nomVoieAdresseToAdd.readOnly = true;
    codePostalAdresseToAdd.readOnly = true;
    villeAdresseToAdd.readOnly = true;

    nomAdresseToAdd.placeholder = "Ajouter une adresse"
    numeroVoieAdresseToAdd.style.display = 'none';
    nomVoieAdresseToAdd.style.display = 'none';
    codePostalAdresseToAdd.style.display = 'none';
    villeAdresseToAdd.style.display = 'none';
    ajoutAdresseIcone.style.display = 'block';
    ajoutAdresseBouton.style.display = 'none';
    annulerAjoutBouton.style.display = 'none';
    retourInfo.style.display = 'block';
    pencilAdresses.forEach((icon) => {
          icon.style.display = 'block';
        });
    trashAdresseIcones.forEach((icon) => {
            icon.style.display = 'block';
        });
});

 $j(document).ready(function() {
    $j('.ajout-adresse-bouton').click(function(event) {
            alert("Adresse ajoutée")
    });
});

 $j(document).ready(function() {
    $j('.modif-adresse-button').click(function(event) {
            alert("Adresse modifiée")
    });
});

const annulerModifBouton = document.querySelectorAll('.annuler-modif-bouton');

annulerModifBouton.forEach((icon, index) => {
    annulerModifBouton[index].addEventListener('click', () => {

            nomAdresses[index].readOnly = true;
            inputNumerosVoie[index].readOnly = true;
            inputNomsVoie[index].readOnly = true;
            inputCodesPostaux[index].readOnly = true;
            inputVilles[index].readOnly = true;

            nomAdresses[index].style.backgroundColor = "#FEE8C8";

            pencilAdresses.forEach((icon) => {
              icon.style.display = 'block';
            });

            trashAdresseIcones.forEach((icon) => {
                icon.style.display = 'block';
            });
            ajoutAdresseIcone.style.display = "block"
            nomAdresseToAdd.style.display = "block"

            // Afficher les autres champs de l'adresse
            inputNumerosVoie[index].style.display = 'none';
            inputNomsVoie[index].style.display = 'none';
            inputCodesPostaux[index].style.display = 'none';
            inputVilles[index].style.display = 'none';
            // Afficher le bouton de validation
            submitAdresses[index].style.display = 'none';
            annulerModifBouton[index].style.display = 'none';


            //Cacher le bouton de retour
            retourInfo.style.display = 'block';
    });
});

function confirmerSuppression(id) {
        if(confirm("Voulez-vous vraiment supprimer cette adresse ?")) {
            window.location.href = "/supprimerAdresse?id=" + id;
        }
}