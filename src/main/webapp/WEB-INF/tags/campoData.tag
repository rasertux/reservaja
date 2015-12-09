<%@ taglib prefix="customtag" tagdir="/WEB-INF/tags" %>
<%@ attribute name="id" required="true"%>
<%@ attribute name="value" required="false" type="java.time.LocalDate" %>

<input class="form-control" id="${id}" name="${id}" value="<customtag:localDate date="${value}" pattern="dd/MM/yyyy"/>" size="16" maxlength="16"
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