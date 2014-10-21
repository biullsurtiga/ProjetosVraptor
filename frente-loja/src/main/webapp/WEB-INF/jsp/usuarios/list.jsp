<form>
	<h2 class="page-header">Usuarios</h2>
	<div class="row">
		<a href='<c:url value='/usuarios/cadastro' />' class='btn btn-success btn-sm'>Cadastro</a>
		<button onclick="del()" class="btn btn-danger btn-sm">Excluir</button>
	</div>
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th style="width: 20px;"><input type="checkbox"
						onclick="selectAll(this, 'id')" class="checkbox"></th>
					<th>Id</th>
					<th>Nome</th>
					<th>Login</th>
					<th>Senha</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${usuarioList}" var="u">
					<tr>
						<td><input type="checkbox" value="${u.id}" name="id"></td>
						<td>${u.id}</td>
						<td>${u.nome}</td>
						<td>${u.login}</td>
						<td>${u.senha}</td>
						<td><a href='<c:url value='/usuarios/edit/${u.id}' />' class="btn btn-primary btn-sm">Editar</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</form>
<script>
	function selectAll(checkbox, items) {
		var list = document.getElementsByName(items);
		for (var i = 0; i < list.length; i++) {
			list[i].checked = checkbox.checked;
		}
	}
	function del() {
		document.forms[0].action = "<c:url value='/usuarios/delete'/>";
		document.forms[0].submit();
	}
</script>