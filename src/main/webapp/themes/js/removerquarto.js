function removerquarto(numero) {
	$.get("/reservaja/removerquarto?", {
		'numero' : numero
	}, function() {
		$("#qua" + numero).remove();
	});
}