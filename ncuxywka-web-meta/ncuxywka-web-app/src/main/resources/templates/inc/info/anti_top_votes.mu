<TMPL_IF anti_top_votes>

<table class=info>
	<tr>
	<td class=title>ПРОГОЛОСУЙ!
	<tr>
	<td>
	<TMPL_LOOP anti_top_votes>
		<p class=user_creo_list>
		<a href="/creos/{{vs_creo_id}}>.html"><b>{{vs_title}}></b></a>
		<br><span class=subnote>{{vs_alias}}></span>
		<!--span class=subnote> [Голосов: {{vs_cnt}}>] </span-->
		</p>
	</TMPL_LOOP>
	
</table>

</TMPL_IF>
