<form  class="form-horizontal" action='<c:url value="/clientes/save"/>' method="post">
	<h2 class="page-header">Clientes</h2>
	<input type="hidden" name="cliente.id" value="${cliente.id}"/>

	<div  class="form-horizontal col-md-5">
	<label class="control-label">Nome</label>
	<input type="text" class="form-control" placeholder="Nome" name="cliente.nome" value="${cliente.nome}" />
	
	<label class="control-label">CPF</label>
	<input type="text" class="form-control" placeholder="CPF" name="cliente.cpf" value="${cliente.cpf}" />
	
	<label class="control-label">Email</label>
	<input type="text" class="form-control" placeholder="Email" name="cliente.email" value="${cliente.email}" />
	
	<label class="control-label">Telefone</label>
	<input type="text" class="form-control" placeholder="Telefone" name="cliente.telefone" value="${cliente.telefone}" />
	
	<label class="control-label">Tipo Pessoa</label>
	<select class="form-control" name="cliente.tipoPessoa">
		<option value="">Selecione</option>
		<c:forEach items="${tipoPessoa}" var="t">
			<option value="${t}">${t}</option>
		</c:forEach>
	</select>
	<br>
	<br>
	<a href='<c:url value="/clientes" />' class="btn btn-default btn-lg active btn-sm" role="button">Voltar</a>
	<button type="submit" class="btn btn-primary btn-sm">Cadastrar</button>
	</div>
</form>