{{#top_creo_views}}

<table class=info>
	<tr>
	<td class=title>Топ просмотров
	<tr>
	<td>
	{{#top_creo_views}}
		<p class=user_creo_list>
		<span class=note>[{{cvt_cnt}}] </span>
		<a href="/creos/{{cvt_creo_id}}.html">
			<b>{{cvt_title}}</b></a>
		<br>
		<span class=subnote>{{cvt_user_name}}</span>
		</p>
	{{/loop_close}}
	
</table>

{{/if_close}}
