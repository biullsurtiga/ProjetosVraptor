package br.com.utils;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;

import br.com.models.Usuario;

public class UsuarioBusiness extends GenericBusiness<Usuario> implements UsuarioRepository{
	
	public UsuarioBusiness(){
		super();	
	}

	@Override
	public List<Usuario> list() {
		Criteria c = createCriteria(Usuario.class);
		c.addOrder(Order.asc("nome"));
		return c.list();
	}
	
	
}
