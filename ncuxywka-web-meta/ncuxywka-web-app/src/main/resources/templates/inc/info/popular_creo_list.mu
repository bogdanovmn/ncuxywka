{{#popular_creo_list}}

<table class=info>
	<tr>
	<td class=title>Активный диспут
	<tr>
	<td>
	{{#popular_creo_list}}
		<p class=user_creo_list>
		<a href="/creos/{{pcl_id}}.html"><b>{{pcl_title}}</b> - {{pcl_alias}}</a>
		<span class=subnote> [Последнее: {{pcl_last_comment_date}} от {{pcl_comment_alias}}]</span>
		</p>
	{{/loop_close}}
	
</table>

{{/if_close}}
