{{#top_users_by_creos_count}}

<table class=info>
	<tr>
	<td class=title>Активно сдают анализы
	<tr>
	<td>
	<TMPL_LOOP top_users_by_creos_count>
		<p class=user_creo_list>
		<span class=note>{{__counter__}}. </span>
		<a href="/users/{{ccu_id}}.html"><b>{{ccu_name}}</b></a>
		<span class=subnote>[{{ccu_cnt}}]</span>
		</p>
	</TMPL_LOOP>
	
</table>

{{/if_close}}
