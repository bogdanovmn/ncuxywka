{{#top_creo_views}}

<table class=info>
	<tr>
	<td class=title>Топ просмотров
	<tr>
	<td>
	{{#top_creo_views}}
		<p class=user_creo_list>
		<span class=note>[{{cvt_cnt}}] </span>
		<a href="{{layout.contextPath}}/creos/{{cvt_creo_id}}">
			<b>{{cvt_title}}</b></a>
		<br>
		<span class=subnote>{{cvt_user_name}}</span>
		</p>
	{{/top_creo_views}}
	
</table>

{{/top_creo_views}}
