{{#contact_list}}

<table class=info>
	<tr>
	<td class=title>Ваши диалоги с ...
	<tr>
	<td>
	{{#contact_list}}
		<p class=user_creo_list>
		<a href="{{layout.contextPath}}/pm/dialog/{{cl_user_id}}/"><b>{{cl_user_name}}</b></a>
		<br><span class=subnote>Сообщений: {{cl_cnt}}</span>
		</p>
	{{/contact_list}}
	
</table>

{{/contact_list}}
