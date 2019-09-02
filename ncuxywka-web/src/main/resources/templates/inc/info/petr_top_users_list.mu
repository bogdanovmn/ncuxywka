{{#petr_top_users_list}}

<table class=info>
	<tr>
	<td class=title>Лучшие друзья Петра
	<tr>
	<td>
	{{#petr_top_users_list}}
		<p class=user_creo_list>
		<span class=note>[{{pp_cnt}}] </span>
		{{#pp_user_id}}
			<a href="{{layout.contextPath}}/users/{{pp_user_id}}.html"><b>{{pp_alias}}</b></a>
		{{/pp_user_id}}
		{{^pp_user_id}}
			{{pp_alias}}
		{{/pp_user_id}}
		</p>
	{{/petr_top_users_list}}
	
</table>

{{/petr_top_users_list}}
