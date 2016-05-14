<%@ attribute name="id" required="true" %>
<%@ attribute name="value" required="true" %>
<%@ attribute name="classe" required="false" %>
<input id="${id}" name="${id}" value="${value}" class="${classe}" />
<script>
	$("#${id}").datepicker({
		dateFormat: 'dd/mm/yy',
    	dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo'],
    	dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
    	dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
    	monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
    	monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez'],
    	prevText:['mês anterior'],
		nextText:['próximo mês']
	});
</script>