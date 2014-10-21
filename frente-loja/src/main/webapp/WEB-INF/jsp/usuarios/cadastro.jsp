<form method="post" action="<c:url value="/usuarios/save"></c:url>">
	<h2 class="page-header">Usuarios</h2>
	<input type="hidden" name="usuario.id" value="${usuario.id}"/>
	<div  class="form-horizontal col-md-5">
	<label class="control-label">Nome</label>	
	<input type="text" class="form-control" placeholder="Nome" name="usuario.nome" value="${usuario.nome}" />
	
	<label class="control-label">Login</label>
	<input type="text" class="form-control" placeholder="Login" name="usuario.login" value="${usuario.login}" />

	<label class="control-label">Senha</label>
	<input type="password" class="form-control" placeholder="Senha" name="usuario.senha" value="${usuario.senha}" />
	
	<br/>
	<a href='<c:url value="/usuarios" />' class="btn btn-default btn-lg active btn-sm" role="button">Voltar</a>
	<button class="btn btn-primary" type="submit">Cadastrar</button>
	</div>
</form>

