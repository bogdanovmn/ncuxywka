<TMPL_IF wc_data_debug>

<TMPL_LOOP wc_data_debug>
	<table class=info_gray>
		<tr>
		<td class=title>Словарь "{{wc_title}}"
		<tr>
		<td>
		<p><b>Всего:</b> {{wc_total}}
		<br><b>Уникальных:</b> {{wc_uniq}}
		<br><b>В обллаке:</b> {{wc_visible}}
		<br><b>В обллаке уинк.частот:</b> {{wc_uniq_freq}}
		<br><b>% limit:</b> {{wc_limit}}
		<br>
		<br>
		</p>
		<TMPL_LOOP wc_data>
			<p class=user_creo_list>
			<span class=note>[{{freq}}, {{percent}}%] </span>
			'{{word}}'
			</p>
		</TMPL_LOOP>
		
	</table>
</TMPL_LOOP>

</TMPL_IF>
