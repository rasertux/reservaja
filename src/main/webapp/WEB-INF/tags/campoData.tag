<%@ attribute name="id" required="true"%>
<%@ attribute name="value" required="false"%>

<input class="form-control" id="${id}" name="${id}" value="${value}" size="16" maxlength="16"
	readonly />

<script>
	$(function() {
		$("#${id}").datepicker({
			format : "dd/mm/yyyy",
			autoclose : true,
			todayBtn : true,
			language : "pt-BR",
			pickerPosition : 'bottom-right',
		});
	});
</script>