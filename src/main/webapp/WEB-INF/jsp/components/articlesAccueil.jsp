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




<div class="row d-flex justify-content-start" >

   <c:if test="${!empty(catalogue)}">
      <c:forEach var="categorie" items="${catalogue}">
           <div id="${categorie.categorie}" style="height:120px"></div>
           <div>
                <h2 >LES ${categorie.categorie}</h2>
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
                           <img src="/images/icones/coeurBlanc.png" class="picto">
                         </div>
                         <div class="col-1 d-flex align-items-center">
                           <img src="/images/icones/ajoutPanierGris.png" class="picto">
                         </div>
                    </div>
               </div>
           </c:forEach>

      </c:forEach>
   </c:if>

</div>




