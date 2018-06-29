{{#contact_list}}

<table class=info>
	<tr>
	<td class=title>Ваши диалоги с ...
	<tr>
	<td>
	<TMPL_LOOP contact_list>
		<p class=user_creo_list>
		<a href="/pm/dialog/{{cl_user_id}}/"><b>{{cl_user_name}}</b></a>
		<br><span class=subnote>Сообщений: {{cl_cnt}}</span>
		</p>
	</TMPL_LOOP>
	
</table>

{{/if_close}}
