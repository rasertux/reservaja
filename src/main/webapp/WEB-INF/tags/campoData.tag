<%@ attribute name="id" required="true"%>
<%@ attribute name="value" required="false" type="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<input class='form-control' id="${id}" name="${id}" value="<fmt:formatDate value="${value}" pattern="dd/MM/yyyy"/>" size="16" maxlength="16"
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