{{#top_users_by_votes}}

<table class=info>
	<tr>
	<td class=title>Самые шизанутые
	<tr>
	<td>
	{{#top_users_by_votes}}
		<p class=user_creo_list>
		<span class=note>{{__counter__}}. </span>
		<a href="/users/{{tul_user_id}}.html"><b>{{tul_user_name}}</b></a>
		<br><span class=subnote>[Голосов: {{tul_cnt}}]</span>
		</p>
	{{/loop_close}}
	
</table>

{{/if_close}}
