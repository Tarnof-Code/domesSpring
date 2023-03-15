<form:form class="register-form " method="post" action="/modifierClient" modelAttribute="client" >
          <h2 style="color:#FF8B00">Mes informations</h2>
          <div class="form-group">
            <div>
                <form:input value="${clientConnecte.email}" path="email" type="email" disabled="true"/>
                <i class="fa fa-at text-secondary" style="margin-left:10px;"></i>
            </div>
            <div>
                <form:errors path="email" cssClass="error"/>
            </div>
          </div>
          <div class="form-group">
             <div>
                <form:input value="${clientConnecte.nom}" path="nom" type="text" readonly="true" />
                <i class="fa fa-pencil modif-info"></i>
             </div>
             <div>
                <form:errors path="nom" cssClass="error"/>
             </div>
          </div>
          <div class="form-group">
             <div>
                <form:input value="${clientConnecte.prenom}" path="prenom" type="text" readonly="true"/>
                <i class="fa fa-pencil modif-info"></i>
             </div>
             <div>
                <form:errors path="prenom" cssClass="error"/>
             </div>
          </div>
          <div class="form-group">
             <div>
                  <form:input value="${clientConnecte.telephone}" path="telephone" type="text" readonly="true"/>
                  <i class="fa fa-pencil modif-info"></i>
             </div>
             <div>
                  <form:errors path="telephone" cssClass="error"/>
             </div>
          </div>
          <div class="form-group">
             <div>
                <form:input value="${clientConnecte.motDePasse}" path="motDePasse" type="password" readonly="true"/>
                <i class="fa fa-pencil modif-info"></i>
             </div>
             <div>
                <form:errors path="motDePasse" cssClass="error"/>
             </div>
          </div>
          <button class="submit-button modif-info-button" type="submit" style="display:none" >Valider les modifications</button>
          <button class="button" type="button" onclick="showMesAdresses()">Mes adresses</button>
</form:form>

<script src="/js/script.js"></script>