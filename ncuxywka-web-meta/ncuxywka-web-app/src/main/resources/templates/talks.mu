<h1>ДИАГНО<span class=letter>Z</span>Ы:</h1>

<TMPL_IF multi_page>
	<TMPL_INCLUDE NAME="inc/pages.tpl">
</TMPL_IF>

<TMPL_LOOP last_comments>
	<table class='<TMPL_IF lc_major>major_</TMPL_IF><TMPL_IF lc_group_name>group_{{lc_group_type}}_</TMPL_IF>comment talks_comment'>
		<tr>
			<td class=who>
				<TMPL_IF lc_group_name>
					<span class=group>{{lc_group_name}}</span>
				</TMPL_IF>
				<TMPL_IF lc_user_id>
					<a class=user href='/users/{{lc_user_id}}.html'><span class=user_name>{{lc_user_name}}</span></a>
				<TMPL_ELSE>
					<span class=anonim>{{lc_alias}}</span> 
				</TMPL_IF>
				<span class=array>&rarr;</span> <TMPL_IF lc_quarantine><s></TMPL_IF><a href="/creos/{{ESCAPE}}=URL NAME=lc_creo_id>.html">{{lc_creo_alias}}: {{lc_creo_title}}<TMPL_IF lc_quarantine></s></TMPL_IF>
				</a>
			<td class="stamp">
				<span class=post_date><TMPL_VAR	NAME=lc_post_date></span>
		<tr>
			<td class=msg colspan=3>
				<TMPL_IF lc_comment_phrase>
					<span class=group>{{lc_comment_phrase}}</span><br><br>
				</TMPL_IF>
				{{ESCAPE}}="NONE" NAME=lc_msg>
				<TMPL_IF lc_cuted>
					<br><span class=note>--> Ампутировано <--</span>
				</TMPL_IF>
	</table>
</TMPL_LOOP>

<TMPL_IF multi_page>
	<hr>
	<TMPL_INCLUDE NAME="inc/pages.tpl">
</TMPL_IF>
