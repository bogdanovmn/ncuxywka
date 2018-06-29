{{#god}}
	<center>
	<h1>НОВОС<span class=letter>T</span>Ь</h1>
	
	<form id=news_post_form name=news_post_form method=post action=''>
		<table class=form>
			<tr>
				<td><span class=note>Новость:</span>
				<td>
				<textarea id=post_text rows=10 cols=60 name=msg></textarea>
			<tr>
				<td>&nbsp;
				<td>
				<input type=submit id=submit_add name=add value='Сообщить эту замечательную новость!'>
		</table>
		<input type=hidden id=action name=action value='add'>
	</form>
	</center>
{{/if_close}}

<center>
	<h1>АР<span class=letter>Х</span>ИВ <span class=letter>ПСИ</span> - НОВОС<span class=letter>Т</span>ЕЙ</h1>
</center>

<table class=news_archive>
<TMPL_LOOP news>
	<tr>
	<td class=info>
		<b>{{n_post_date}}</b> 
		от <a href="/users/{{n_user_id}}.html">{{n_user_name}}</a>
	<td class=menu>
		{{#god}}
			<a href="/news/hide/{{n_id}}">Удалить</a>
		{{/if_close}}
	<tr>
	<td class=text colspan=2>
		{{n_msg}}
{{/loop_close}}
</table>
