function removercliente(cpf) {
	$.get("/reservaja/removercliente?", {
		'cpf' : cpf
	}, function() {
		$("#cli" + cpf).remove();
	});
}