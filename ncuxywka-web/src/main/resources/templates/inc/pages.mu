
<table class=pages {{#width}}style='width:{{width}}px'{{/width}}>
<tr>
{{#no_empty}}
<td class=pages_navigation><span class=note>Страницы:&nbsp;&nbsp;</span>
{{#prev_page}}
	<a href='{{uri}}page{{prev_page}}'>< сюда</a> |
{{/if_close}}

{{#many}}

	{{#first}}
		<a href='{{uri}}page1'>1</a>
		<a href='{{uri}}page{{left_jump}}'>...</a>
	{{/if_close}}

	{{#left}}
		<a href='{{p_uri}}page{{page}}'>{{page}}</a>
	{{/loop_close}}

	<b>{{current_page}}</b>

	{{#right}}
		<a href='{{p_uri}}page{{page}}'>{{page}}</a>
	{{/loop_close}}

	{{#last}}
		<a href='{{uri}}page{{right_jump}}'>...</a>
		<a href='{{uri}}page{{last}}'>{{last}}</a>
	{{/if_close}}

<TMPL_ELSE>

	{{#left}}
		<a href='{{p_uri}}page{{page}}'>{{page}}</a>
	{{/loop_close}}

	<b>{{current_page}}</b>

	{{#right}}
		<a href='{{p_uri}}page{{page}}'>{{page}}</a>
	{{/loop_close}}

{{/if_close}}

{{#next_page}}
	| <a href='{{uri}}page{{next_page}}'>туда ></a>
{{/if_close}}

<TMPL_ELSE>
	<td class=pages_empty>&nbsp;
{{/if_close}}

{{#show_pages_count}}
	<td class=pages_rows_count>Записей: {{rows_count}}
{{/if_close}}

</table>
