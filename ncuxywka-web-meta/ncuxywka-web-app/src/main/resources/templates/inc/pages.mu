
<table class=pages {{#width}}style='width:{{width}}px'{{/width}}>
<tr>
{{#no_empty}}
<td class=pages_navigation><span class=note>Страницы:&nbsp;&nbsp;</span>
{{#prev_page}}
	<a href='{{uri}}page{{prev_page}}.html'>< сюда</a> |
</TMPL_IF>

{{#many}}

	{{#first}}
		<a href='{{uri}}page1.html'>1</a>
		<a href='{{uri}}page{{left_jump}}.html'>...</a>
	</TMPL_IF>

	<TMPL_LOOP left>
		<a href='{{p_uri}}page{{page}}.html'>{{page}}</a>
	</TMPL_LOOP>

	<b>{{current_page}}</b>

	<TMPL_LOOP right>
		<a href='{{p_uri}}page{{page}}.html'>{{page}}</a>
	</TMPL_LOOP>

	{{#last}}
		<a href='{{uri}}page{{right_jump}}.html'>...</a>
		<a href='{{uri}}page{{last}}.html'>{{last}}</a>
	</TMPL_IF>

<TMPL_ELSE>

	<TMPL_LOOP left>
		<a href='{{p_uri}}page{{page}}.html'>{{page}}</a>
	</TMPL_LOOP>

	<b>{{current_page}}</b>

	<TMPL_LOOP right>
		<a href='{{p_uri}}page{{page}}.html'>{{page}}</a>
	</TMPL_LOOP>

</TMPL_IF>

{{#next_page}}
	| <a href='{{uri}}page{{next_page}}.html'>туда ></a>
</TMPL_IF>

<TMPL_ELSE>
	<td class=pages_empty>&nbsp;
</TMPL_IF>

{{#show_pages_count}}
	<td class=pages_rows_count>Записей: {{rows_count}}
</TMPL_IF>

</table>
