<TMPL_IF most_active_users>

<table class=info>
	<tr>
	<td class=title>Самые буйные
	<tr>
	<td>
	<TMPL_LOOP most_active_users>
		<p class=user_creo_list>
		<span class=note>{{__counter__}}>. </span>
		<a href="/users/{{au_id}}>.html"><b>{{au_name}}></b></a>
		</p>
	</TMPL_LOOP>
	
</table>

</TMPL_IF>
