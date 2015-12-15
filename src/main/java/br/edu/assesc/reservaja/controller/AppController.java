package br.edu.assesc.reservaja.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import br.edu.assesc.reservaja.model.ClienteBean;
import br.edu.assesc.reservaja.model.QuartoBean;
import br.edu.assesc.reservaja.model.ReservaBean;
import br.edu.assesc.reservaja.service.ClienteService;
import br.edu.assesc.reservaja.service.QuartoService;
import br.edu.assesc.reservaja.service.ReservaService;

@Controller
@RequestMapping("/")
public class AppController {

	@Autowired
	ClienteService clienteservice;

	@Autowired
	QuartoService quartoservice;

	@Autowired
	ReservaService reservaservice;

	@Autowired
	MessageSource messageSource;

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	// Clientes

	@RequestMapping(value = { "/inserircliente" }, method = RequestMethod.GET)
	public String cadastrarCliente(ModelMap model) {
		ClienteBean cliente = new ClienteBean();
		model.addAttribute("cliente", cliente);
		model.addAttribute("erros", false);
		return "cadastrarcliente";
	}

	@RequestMapping(value = { "/inserircliente" }, method = RequestMethod.POST)
	public String inserirCliente(@Valid @ModelAttribute("cliente") ClienteBean cliente, BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			model.addAttribute("erros", true);
			return "cadastrarcliente";
		}
		clienteservice.inserir(cliente);
		return "redirect:/listarclientes";
	}

	@RequestMapping(value = { "/removercliente" }, method = RequestMethod.GET)
	public String removerCliente(String cpf) {
		clienteservice.remover(cpf);
		return "redirect:/listarclientes";
	}

	@RequestMapping(value = { "/editarcliente" }, method = RequestMethod.GET)
	public String editarCliente(String id, ModelMap model) {
		ClienteBean cliente = (ClienteBean) clienteservice.consultar(new Integer(id));
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

	@RequestMapping(value = { "/inserirquarto" }, method = RequestMethod.GET)
	public String cadastrarQuarto(ModelMap model) {
		QuartoBean quarto = new QuartoBean();
		model.addAttribute("quarto", quarto);
		model.addAttribute("erros", false);
		return "cadastrarquarto";
	}

	@RequestMapping(value = { "/inserirquarto" }, method = RequestMethod.POST)
	public String inserirQuarto(@Valid @ModelAttribute("quarto") QuartoBean quarto, BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			model.addAttribute("erros", true);
			return "cadastrarquarto";
		}
		quartoservice.inserir(quarto);
		return "redirect:/listarquartos";
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

	// Reservas

	@RequestMapping(value = { "/inserirreserva" }, method = RequestMethod.GET)
	public String cadastrarReserva(ModelMap model) {
		@SuppressWarnings("unchecked")
		List<ClienteBean> clientes = (List<ClienteBean>) (Object) clienteservice.getItens();
		model.addAttribute("clientes", clientes);

		@SuppressWarnings("unchecked")
		List<QuartoBean> quartos = (List<QuartoBean>) (Object) quartoservice.getItens();
		model.addAttribute("quartos", quartos);

		ReservaBean reserva = new ReservaBean();
		model.addAttribute("reserva", reserva);
		
		model.addAttribute("erros", false);

		return "cadastrarreserva";
	}

	@RequestMapping(value = { "/inserirreserva" }, method = RequestMethod.POST)
	public String inserirReserva(String cliente_id, String numero_quarto, @Valid @ModelAttribute("reserva") ReservaBean reserva, BindingResult result,
			ModelMap model) {
		if (result.hasErrors()) {
			model.addAttribute("erros", true);
			System.out.println(result.toString());
			return "cadastrarreserva";
		}
		reserva.setCpf((ClienteBean) clienteservice.consultar(new Integer(cliente_id)));
		reserva.setNumeroquarto((QuartoBean) quartoservice.consultar(new Integer(numero_quarto)));
		reservaservice.inserir(reserva);
		return "redirect:/listarreservas";
	}

	@RequestMapping(value = { "/listarreservas" }, method = RequestMethod.GET)
	public String listarReservas(ModelMap model) {
		@SuppressWarnings("unchecked")
		List<ReservaBean> reservas = (List<ReservaBean>) (Object) reservaservice.getItens();
		model.addAttribute("reservas", reservas);
		return "listarreservas";
	}

	@RequestMapping(value = { "/removerreserva" }, method = RequestMethod.GET)
	public String removerReserva(Integer id) {
		reservaservice.remover(id);
		return "redirect:/listarreservas";
	}

	@RequestMapping(value = { "/editarreserva" }, method = RequestMethod.GET)
	public String editarReserva(Integer id, ModelMap model) {
		@SuppressWarnings("unchecked")
		List<ClienteBean> clientes = (List<ClienteBean>) (Object) clienteservice.getItens();
		model.addAttribute("clientes", clientes);

		@SuppressWarnings("unchecked")
		List<QuartoBean> quartos = (List<QuartoBean>) (Object) quartoservice.getItens();
		model.addAttribute("quartos", quartos);

		ReservaBean reserva = (ReservaBean) reservaservice.consultar(id);
		model.addAttribute("reserva", reserva);
		return "alterarreservas";
	}

	@RequestMapping(value = { "/alterareserva" }, method = RequestMethod.POST)
	public String alterarReserva(String id, String numero_quarto, ReservaBean reserva, BindingResult result, ModelMap model) {
		reserva.setCpf((ClienteBean) clienteservice.consultar(new Integer(id)));
		reserva.setNumeroquarto((QuartoBean) quartoservice.consultar(new Integer(numero_quarto)));
		reservaservice.alterar(reserva);
		return "redirect:/listarreservas";
	}
}
