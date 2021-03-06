package br.com.controllers;

import java.util.Collection;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.models.Usuario;
import br.com.utils.GenericController;
import br.com.utils.UsuarioRepository;

@Controller
@Path("/usuarios")
public class UsuariosController extends GenericController {

	@Inject private UsuarioRepository repository;
	@Get("")
	public Collection<Usuario> list() {
		Collection<Usuario> list = repository.list();
		result.include("usuarioList", list);
		return list;
	}
	
	@Path("/cadastro")
	public void cadastro() {
	}
	
	@Post("/save")
	public void save(Usuario usuario) {
		usuario = repository.save(usuario);
		result.redirectTo(this).list();
	}
	
	@Path("/delete")
	public void delete(Long[] id){
		try {
			if (id == null || id.length == 0) {
				//Fudeu
			} else {
				for (Long i : id) {
					repository.delete(i);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		result.redirectTo(this).list();
	}
	
	@Path("/edit/{id}")
	public void edit(Long id){
		Usuario usuario = null;
		if(id != null){
			usuario = repository.find(id);
			result.include("usuario", usuario);
		}
	}
}
