
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mon panier</title>
</head>
<body>
	
	<%@ include file="../components/navBar.jsp" %>
	<main>
           <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-7">
                        <div style="height:20px"></div>
                        <div class="mon_panier_titre">
                            <h2 style="color:#FF8B00">Mon panier</h2>
                        </div>
                        <div class="row articles" style="height=20%">
                             <div class="col-5" >
                                 <img src="/images/animaux/chats/junior.png" class="bandeauImg">
                             </div>
                             <div class="col-5 d-flex flex-column justify-content-center" >
                               <H3>Junior</H3>
                               <p>Angorra</p>
                               <h6 class="prix-panier">800.00 EUR</h6>
                               <p class="en-savoir-plus"><a target="_blank" href="/produit?id=2">En savoir plus</a></p>
                             </div>
                             <div class="col-1 d-flex align-items-center justify-content-center mx-2" >
                                  <div class="icons-wrapper">
                                    <i class="fas fa-trash-alt"></i>
                                  </div>
                             </div>
                        </div>
                        <div style="height:20px"></div>
                        <div class="row total-panier" >
                            <div class="col-3 d-flex align-items-center" >
                                <p style="font-size:20px">TOTAL : </p>
                            </div>
                            <div class="col-3 d-flex align-items-center" >
                                <p class="prix-panier">800 EUR</p>
                            </div>
                            <div class="col-5" >
                                <button class="submit-button" style="margin:0;max-width:100%">Acheter maintenant</button>
                            </div>

                        </div>
                    </div>
                    <div class="col-0 col-lg-2"></div>
                    <div class="col-12 col-lg-3" >
                         <div style="height:20px"></div>
                        <%@ include file="../components/aside.jsp" %>
                    </div>
                </div>
           </div>
    <div style="height:20rem"></div>
    </main>
	<%@ include file="../components/footer.jsp" %>
</body>
</html>