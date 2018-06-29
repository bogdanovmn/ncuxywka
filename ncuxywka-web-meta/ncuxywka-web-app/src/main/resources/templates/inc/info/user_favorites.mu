<TMPL_IF user_favorites>

<table class=info>
	<tr>
	<td class=title>Пациэнты под надзором
	<tr>
	<td>
	<TMPL_LOOP user_favorites>
		<p class=user_creo_list>
		<span class=subnote>[<a href="/talks/for/{{uf_uid}}/from/{{uf_master_id}}">{{uf_cnt}} диаг.</a>]</span>
		<a href="/users/{{uf_uid}}.html"><b>{{uf_name}}</b></a>
		</p>
	</TMPL_LOOP>
	
</table>

</TMPL_IF>
