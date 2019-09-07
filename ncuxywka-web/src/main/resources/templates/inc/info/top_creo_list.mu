{{#top_creo_list}}

<table class=info>
	<tr>
	<td class=title>Верх шизофренизма
	<tr>
	<td>
	{{#top_creo_list}}
		<p class=user_creo_list>
		<span class=note>{{__counter__}}. </span>
		<a href="{{layout.contextPath}}/creos/{{tcl_id}}" title="Голосов: {{tcl_cnt}}">
			<b>{{tcl_title}}</b></a>
		{{^tcl_self_vote}}
			<span class=subnote>?</span>
		{{/tcl_self_vote}}
		<br>
		<span class=subnote>{{tcl_alias}}</span>
		</p>
	{{/top_creo_list}}
	
</table>

{{/top_creo_list}}
