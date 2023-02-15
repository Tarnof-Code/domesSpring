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


<h2>Les chiens</h2>

         <div class="row d-flex justify-content-start" >

<c:if test="${!empty(listeChiens)}">
       <c:forEach var="chien" items="${listeChiens}">
           <div class="col-12 col-lg-6">
                <div class="row articles">
                     <div class="col-5">
                         <img src="${chien.photo}" class="bandeauImg" style="max-width:200px">
                     </div>

                     <div class="col-4 text-center d-flex flex-column justify-content-center">
                       <H3>${chien.nom}</H3>
                       <p>${chien.race}</p>
                       <h6>${chien.prix} euros</h6>
                     </div>

                     <div class="col-1 d-flex align-items-center">
                       <img src="/images/icones/coeurBlanc.png" class="picto">
                     </div>
                     <div class="col-1 d-flex align-items-center">
                       <img src="/images/icones/ajoutPanierGris.png" class="picto">
                     </div>
                </div>
           </div>
       </c:forEach>
</c:if>




        </div>





