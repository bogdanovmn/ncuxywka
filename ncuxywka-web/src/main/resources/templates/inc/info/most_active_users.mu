{{#most_active_users}}

<table class=info>
	<tr>
	<td class=title>Самые буйные
	<tr>
	<td>
	{{#most_active_users}}
		<p class=user_creo_list>
		<span class=note>{{__counter__}}. </span>
		<a href="{{layout.contextPath}}/users/{{au_id}}.html"><b>{{au_name}}</b></a>
		</p>
	{{/most_active_users}}
	
</table>

{{/most_active_users}}
