<TMPL_IF online>
<table class=info>
	<tr>
	<td class=title>На проводе
	<tr>
	<td>
		<TMPL_LOOP online>
			<p class=user_creo_list>
				<TMPL_IF o_user_id>
					<a class=user_online href='/users/{{o_user_id}}.html'>{{o_user_name}}</a>
					<br>
					<span class=note>
						{{o_action_time}}<TMPL_IF o_path_descr>, {{o_path_descr}}</TMPL_IF>
					</span>
				</TMPL_IF>
			</p>
		</TMPL_LOOP>
</table>

</TMPL_IF>
