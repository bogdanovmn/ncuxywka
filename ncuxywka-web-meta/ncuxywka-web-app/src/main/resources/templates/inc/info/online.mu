{{#online}}
<table class=info>
	<tr>
	<td class=title>На проводе
	<tr>
	<td>
		<TMPL_LOOP online>
			<p class=user_creo_list>
				{{#o_user_id}}
					<a class=user_online href='/users/{{o_user_id}}.html'>{{o_user_name}}</a>
					<br>
					<span class=note>
						{{o_action_time}}{{#o_path_descr}}, {{o_path_descr}}{{/o_path_descr}}
					</span>
				{{/if_close}}
			</p>
		{{/loop_close}}
</table>

{{/if_close}}
