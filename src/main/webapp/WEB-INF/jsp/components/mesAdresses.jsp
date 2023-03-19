 <meta charset="UTF-8">

  <h2 style="color:#FF8B00;text-align:center">Mes adresses</h2>

    <form:form class="adresse-group" modelAttribute="adresse" method="post" action="/ajouterAdresse">
                <div class="d-flex justify-content-center align-items-center">
                    <form:input class="text-center ajout-nom"
                        placeholder="Ajouter une adresse"
                        style="font-weight:bold;color:#5E42DB"
                        path="nom"
                        readonly="true"/>
                    <i class="fa fa-plus ajout-adresse"></i>
                    <i class="fa fa-trash suppr-adresse" style="visibility:hidden"></i>
                </div>
                <div class="d-flex justify-content-center" >
                    <form:input class="ajout-numero-voie"
                        placeholder="Numéro de la voie"
                        path="numeroVoie"
                        style="display:none"
                        readonly="true"/>
                 </div>
                 <div class="d-flex justify-content-center" >
                    <form:input class="ajout-nom-voie"
                        placeholder="Nom de la voie"
                        path="nomVoie"
                        style="display:none"
                        readonly="true"/>
                 </div>
                 <div class="d-flex justify-content-center" >
                    <form:input class="ajout-code-postal"
                        placeholder="Code postal"
                        path="codepostal"
                        style="display:none"
                        readonly="true"/>
                 </div>
                 <div class="d-flex justify-content-center" >
                    <form:input class="ajout-ville"
                        placeholder="Ville"
                        path="ville"
                        style="display:none"
                        readonly="true"/>
                 </div>
                 <div class="d-flex justify-content-center">
                    <button class="submit-button ajout-adresse-bouton"
                        type="submit"
                        style="display:none; margin:10px;">
                        Ajouter
                    </button>
                    <button class="submit-button annuler-ajout-bouton"
                        style="display:none; margin:10px;"
                        type="button">
                        Annuler
                    </button>
                 </div>
             </form:form>

     <c:if test="${!empty(adresses)}">
       <c:forEach var="adresse" items="${adresses}">
         <form:form class="adresse-group" method="post" action="/modifierAdresse?id=${adresse.id}" modelAttribute="adresse">
            <div class="d-flex justify-content-center align-items-center">
                <form:input class="text-center input-adresse"
                    value="${adresse.nom}"
                    placeholder="Nom de l'adresse"
                    style="font-weight:bold"
                    path="nom"
                    readonly="true"/>
                <i class="fa fa-pencil modif-adresse"></i>
                <i class="fa fa-trash suppr-adresse" onclick="confirmerSuppression(${adresse.id})"></i>
            </div>
            <div class="d-flex justify-content-center" >
                <form:input class="input-adresse numero-voie"
                    value="${adresse.numeroVoie}"
                    placeholder="N°"
                    path="numeroVoie"
                    style="display:none"
                    readonly="true"/>
             </div>
             <div class="d-flex justify-content-center" >
                <form:input class="input-adresse nom-voie"
                    value="${adresse.nomVoie}"
                    placeholder="Nom de la voie"
                    path="nomVoie"
                    style="display:none"
                    readonly="true"/>
             </div>
             <div class="d-flex justify-content-center" >
                <form:input class="input-adresse code-postal"
                    value="${adresse.codepostal}"
                    placeholder="Code postal"
                    path="codepostal"
                    style="display:none"
                    readonly="true"/>
             </div>
             <div class="d-flex justify-content-center" >
                <form:input class="input-adresse ville"
                    value="${adresse.ville}"
                    placeholder="Ville"
                    path="ville"
                    style="display:none"
                    readonly="true"/>
             </div>
             <div class="d-flex justify-content-center">
                 <button class="submit-button modif-adresse-button"
                     type="submit"
                     style="display:none; margin:10px;">
                     Valider
                 </button>
                 <button class="submit-button annuler-modif-bouton"
                     style="display:none; margin:10px;"
                     type="button">
                     Annuler
                 </button>
             </div>
         </form:form>
       </c:forEach>
     </c:if>
     <button class="submit-button retour-info" type="button" onclick="showMesInfos()">
        Voir mes informations
     </button>

