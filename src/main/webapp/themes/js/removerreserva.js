function removerreserva(id) {
	$.get("/reservaja/removerreserva?", {
		'id' : id
	}, function() {
		$("#res" + id).remove();
	});
}