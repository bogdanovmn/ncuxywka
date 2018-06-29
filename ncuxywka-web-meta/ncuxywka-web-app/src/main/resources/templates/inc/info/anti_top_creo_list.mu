<TMPL_IF anti_top_creo_list>

<table class="info_gray">
	<tr>
	<td class=title>Параноидальный бред
	<tr>
	<td>
	<TMPL_LOOP anti_top_creo_list>
		<p class=user_creo_list>
		<span class=note>{{__counter__}}. </span>
		<a href="/creos/{{tcl_id}}.html" title="Голосов: {{tcl_cnt}}">
			<b>{{tcl_title}}</b></a>
			<TMPL_UNLESS tcl_self_vote>
				<span class=subnote>?</span>
			</TMPL_UNLESS>
		<br>
		<span class=subnote>{{tcl_alias}}</span>
		</p>
	</TMPL_LOOP>
	
</table>

</TMPL_IF>
