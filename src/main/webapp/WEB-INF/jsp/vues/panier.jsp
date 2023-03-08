
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
                    <div class="col-12 col-lg-6">
                        <div style="height:10px"></div>
                        <div class="mon_panier_titre">
                            <h2 style="color:#FF8B00">Mon panier</h2>
                        </div>
                    <%@ include file="../components/articlesPanier.jsp" %>
                    </div>
                    <div class="col-0 col-lg-3"></div>
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