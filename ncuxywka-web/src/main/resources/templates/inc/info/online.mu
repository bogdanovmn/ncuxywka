{{#online}}
<table class=info>
	<tr>
	<td class=title>На проводе
	<tr>
	<td>
		{{#online}}
			<p class=user_creo_list>
				{{#o_user_id}}
					<a class=user_online href='{{layout.contextPath}}/users/{{o_user_id}}.html'>{{o_user_name}}</a>
					<br>
					<span class=note>
						{{o_action_time}}{{#o_path_descr}}, {{o_path_descr}}{{/o_path_descr}}
					</span>
				{{/o_user_id}}
			</p>
		{{/online}}
</table>

{{/online}}
