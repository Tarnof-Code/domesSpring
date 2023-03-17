  <h2 style="color:#FF8B00;text-align:center">Mes adresses</h2>
     <c:if test="${!empty(adresses)}">
       <c:forEach var="adresse" items="${adresses}">
         <form:form class="adresse-group" modelAttribute="adresse">
            <div class="d-flex justify-content-center align-items-center">
                <form:input class="text-center input-adresse"
                    value="${adresse.nom}"
                    style="font-weight:bold"
                    path="nom"
                    readonly="true"/>
                <i class="fa fa-pencil modif-adresse"></i>
            </div>
            <div class="d-flex justify-content-center" >
                <form:input class="input-adresse numero-voie"
                    value="${adresse.numeroVoie}"
                    path="numeroVoie"
                    style="display:none"
                    readonly="true"/>
             </div>
             <div class="d-flex justify-content-center" >
                <form:input class="input-adresse nom-voie"
                    value="${adresse.nomVoie}"
                    path="nomVoie"
                    style="display:none"
                    readonly="true"/>
             </div>
             <div class="d-flex justify-content-center" >
                <form:input class="input-adresse code-postal"
                    value="${adresse.codepostal}"
                    path="codepostal"
                    style="display:none"
                    readonly="true"/>
             </div>
             <div class="d-flex justify-content-center" >
                <form:input class="input-adresse ville"
                    value="${adresse.ville}"
                    path="ville"
                    style="display:none"
                    readonly="true"/>
             </div>
            <button class="submit-button modif-adresse-button"
                type="submit"
                style="display:none; margin-bottom:50px;">
                Valider les modifications
            </button>
         </form:form>
       </c:forEach>
     </c:if>
     <button class="submit-button" type="button" onclick="showMesInfos()">
        Voir mes informations
     </button>

