<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta charset="UTF-8" content="text/html; charset=UTF-8">
<title>Mon compte</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<%@ include file="../components/navBar.jsp" %>
<main>

 <div style="height:2rem"></div>
 <div class="container">
     <div class="row d-flex justify-content-center">
         <div id="compteInfos" class="col-10 col-lg-4 mr-1 mb-4">
             <%@ include file="../components/compteInfos.jsp"%>
         </div>
         <div id="mesAdresses" class="monCompte col-10 col-lg-4 mr-1 mb-4" style="display:none;">
              <%@ include file="../components/mesAdresses.jsp"%>
         </div>
         <div class="monCompte col-10 col-lg-3 mt-4 mt-lg-0 mx-4 mb-4">
             <%@ include file="../components/compteCommandes.jsp"%>
         </div>
         <div class="monCompte col-10 col-lg-3 mt-4 mt-lg-0 mx-4 mb-4">
             <%@ include file="../components/compteFavoris.jsp"%>
         </div>
     </div>
 </div>

 <div style="height:10rem"></div>
</main>
    <%@ include file="../components/footer.jsp" %>
    <script src="/js/script.js"></script>
</body>
</html>