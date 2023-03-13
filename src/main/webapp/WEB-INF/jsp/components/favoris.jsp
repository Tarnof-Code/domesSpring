<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<aside>
    <h2 class="text-center mt-3 mt-lg-0">Mes favoris</h2>
        <div class="suggestion-wrapper" ">
            <div class="container">
                <div class="row" >
                    <c:if test="${!empty(listeFavoris)}">
                        <c:forEach var="animal" items="${listeFavoris}">
                          <div class="text-center col-6" e">
                            <a href="/produit?id=${animal.id}">
                                <img src="${animal.photo}" alt="${animal.race}">
                                <p><c:out value="${animal.nom}" /></p>
                            </a>
                          </div>
                        </c:forEach>
                    </c:if>
                </div>
            </div>
        </div>
</aside>