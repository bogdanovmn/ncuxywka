{{#most_commented_creo_list}}

<table class=info>
	<tr>
	<td class=title>Мало диагнозов
	<tr>
	<td>
	{{#most_commented_creo_list_revert}}
		<p class=user_creo_list>
		<span class=note>[{{mccl_cnt}}] </span>
		<a href="/creos/{{mccl_id}}.html"><b>{{mccl_title}}</b></a>
		<br><span class=subnote>{{mccl_alias}}</span>
		</p>
	{{/most_commented_creo_list_revert}}
</table>

<table class=info>
	<tr>
	<td class=title>Самое обсуждаемое
	<tr>
	<td>
	{{#most_commented_creo_list}}
		<p class=user_creo_list>
		<span class=note>[{{mccl_cnt}}] </span>
		<a href="/creos/{{mccl_id}}.html"><b>{{mccl_title}}</b></a>
		<br><span class=subnote>{{mccl_alias}}</span>
		</p>
	{{/most_commented_creo_list}}
</table>

{{/most_commented_creo_list}}
