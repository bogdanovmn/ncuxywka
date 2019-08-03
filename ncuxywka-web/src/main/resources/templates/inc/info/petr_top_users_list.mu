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
			<a href="/users/{{pp_user_id}}.html"><b>{{pp_alias}}</b></a>
		<TMPL_ELSE>
			{{pp_alias}}
		{{/if_close}}
		</p>
	{{/loop_close}}
	
</table>

{{/if_close}}
