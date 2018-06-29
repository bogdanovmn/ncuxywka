{{#vova_last_creos}}

<table class=vova_last_info>
	<tr>
	<td class=title>Тепленькое от Жиля
	<tr>
	<td>
	<TMPL_LOOP vova_last_creos>
		<p class=user_creo_list>
		<a href="/creos/{{cl_id}}.html">{{cl_title}}</a>
		<br><span class=note>{{cl_post_date}}</span>
		</p>
	</TMPL_LOOP>
	
</table>

</TMPL_IF>
