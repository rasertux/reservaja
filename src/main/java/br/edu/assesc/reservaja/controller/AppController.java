package br.edu.assesc.reservaja.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.assesc.reservaja.model.ClienteBean;
import br.edu.assesc.reservaja.model.QuartoBean;
import br.edu.assesc.reservaja.service.ClienteService;
import br.edu.assesc.reservaja.service.QuartoService;

@Controller
@RequestMapping("/")
public class AppController {

	@Autowired
	ClienteService clienteservice;

	@Autowired
	QuartoService quartoservice;

	@Autowired
	MessageSource messageSource;

	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	// Clientes

	@RequestMapping(value = { "/cadastrarcliente" }, method = RequestMethod.GET)
	public String cadastrarCliente(ModelMap model) {
		ClienteBean cliente = new ClienteBean();
		model.addAttribute("cliente", cliente);
		return "cadastrarcliente";
	}

	@RequestMapping(value = { "/inserircliente" }, method = RequestMethod.POST)
	public String inserirCliente(ClienteBean cliente, BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			return "cadastrarcliente";
		}
		clienteservice.inserir(cliente);
		return "index";
	}

	@RequestMapping(value = { "/removercliente" }, method = RequestMethod.GET)
	public String removerCliente(String cpf) {
		clienteservice.remover(cpf);
		return "redirect:/listarclientes";
	}

	@RequestMapping(value = { "/editarcliente" }, method = RequestMethod.GET)
	public String editarCliente(Integer id, ModelMap model) {
		ClienteBean cliente = (ClienteBean) clienteservice.consultar(id);
		model.addAttribute("cliente", cliente);
		return "alterarclientes";
	}

	@RequestMapping(value = { "/alteracliente" }, method = RequestMethod.POST)
	public String alterarCliente(ClienteBean cliente, BindingResult result, ModelMap model) {
		clienteservice.alterar(cliente);
		return "redirect:/listarclientes";
	}

	@RequestMapping(value = { "/listarclientes" }, method = RequestMethod.GET)
	public String listarCliente(ModelMap model) {
		@SuppressWarnings("unchecked")
		List<ClienteBean> clientes = (List<ClienteBean>) (Object) clienteservice.getItens();
		model.addAttribute("clientes", clientes);
		return "listarclientes";
	}
	
	// Quartos

	@RequestMapping(value = { "/cadastrarquarto" }, method = RequestMethod.GET)
	public String cadastrarQuarto(ModelMap model) {
		QuartoBean quarto = new QuartoBean();
		model.addAttribute("quarto", quarto);
		return "cadastrarquarto";
	}

	@RequestMapping(value = { "/inserirquarto" }, method = RequestMethod.POST)
	public String inserirQuarto(QuartoBean quarto, BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			return "cadastrarquarto";
		}
		quartoservice.inserir(quarto);
		return "index";
	}

	@RequestMapping(value = { "/listarquartos" }, method = RequestMethod.GET)
	public String listarQuartos(ModelMap model) {
		@SuppressWarnings("unchecked")
		List<QuartoBean> quartos = (List<QuartoBean>) (Object) quartoservice.getItens();
		model.addAttribute("quartos", quartos);
		return "listarquartos";
	}

	@RequestMapping(value = { "/removerquarto" }, method = RequestMethod.GET)
	public String removerQuarto(Integer numero) {
		quartoservice.remover(numero);
		return "redirect:/listarquartos";
	}

	@RequestMapping(value = { "/editarquarto" }, method = RequestMethod.GET)
	public String editarQuarto(Integer numero, ModelMap model) {
		QuartoBean quarto = (QuartoBean) quartoservice.consultar(numero);
		model.addAttribute("quarto", quarto);
		return "alterarquartos";
	}

	@RequestMapping(value = { "/alteraquarto" }, method = RequestMethod.POST)
	public String alterarQuarto(QuartoBean quarto, BindingResult result, ModelMap model) {
		quartoservice.alterar(quarto);
		return "redirect:/listarquartos";
	}
}
