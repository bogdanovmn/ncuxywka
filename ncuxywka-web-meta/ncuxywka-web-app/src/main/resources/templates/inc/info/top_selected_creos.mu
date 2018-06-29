{{#top_selected_creos}}

<table class=info>
	<tr>
	<td class=title>Топ избранного
	<tr>
	<td>
	<TMPL_LOOP top_selected_creos>
		<p class=user_creo_list>
		<span class=note>[{{sct_cnt}}] </span>
		<a href="/creos/{{sct_creo_id}}.html">
			<b>{{sct_title}}</b></a>
		<br>
		<span class=subnote>{{sct_user_name}}</span>
		</p>
	</TMPL_LOOP>
	
</table>

{{/if_close}}
