{{#is_last}}
	<h1>В<span class=letter>А</span>ШИ ЛИЧНЫЕ С<span class=letter>ОО</span>БЩЕНИЯ:</h1>

	<table class=personal_messages>
	<tr>
	<td class=menu>
		{{#is_in_messages}}
			Полученные :: 
			<a href='/pm/out/'>Отправленные</a>
		<TMPL_ELSE>
			<a href='/pm/in/'>Полученные</a> :: 
			Отправленные
		{{/if_close}}
	<TMPL_LOOP messages>
		{{#lm_new}}
			<tr><td class=new_message>Новое!
		{{/if_close}}
		<tr>
		<td class=info>
			{{#lm_is_in_message}}
				От <a class=user href='/users/{{lm_user_id}}.html'><span class=user_name>{{lm_user_name}}</span></a>
			<TMPL_ELSE>
				Для <a class=user href='/users/{{lm_to_user_id}}.html'><span class=user_name>{{lm_to_user_name}}</span></a>
			{{/if_close}}
			<span class=date>
				{{#lm_is_in_message}}<a href='/pm/dialog/{{lm_user_id}}/'>Ответить</a>&nbsp;&nbsp;{{/lm_is_in_message}}
				{{lm_date}}
			</span>
		<tr>
		<td class=text>
			{{ESCAPE}}="NONE" NAME=lm_msg>
		<tr>
		<td class=empty>
			&nbsp;
	{{/loop_close}}
	</table>
	{{#multi_page}}
		<TMPL_INCLUDE NAME="inc/pages.tpl">
	{{/if_close}}
{{/if_close}}

{{#is_dialog}}
	<center>
	<h1>П<span class=letter>О</span>ШЕПТ<span class=letter>А</span>ТЬ П<span class=letter>А</span>ЦИЭНТ<span class=letter>Y</span>:</h1>
	<p>[ <span class=user_name>{{recipient_name}}</span> ]<br><br></p>
	<form method=post action='/pm/post'>
		<textarea name=msg rows=10 cols=60></textarea>
		<br>
		<br>
		<input type=submit value="Шепнуть на ушко">
		<input type=hidden name=user_id value="{{recipient_id}}">
		<input type=hidden name=action value="post">
	</form>
	</center>

	<h1>В<span class=letter>А</span>Ш<span class=letter>А</span> ПЕРЕПИСК<span class=letter>А</span> С ЭТИ<span class=letter>М</span> П<span class=letter>А</span>ЦИЭНТО<span class=letter>М</span><span class=letter></span>:</h1>
	{{#multi_page}}
		<TMPL_INCLUDE NAME="inc/pages.tpl">
	{{/if_close}}
	<table class=personal_messages>
	<TMPL_LOOP messages>
		<tr>
		<td class=info>
			<a class=user href='/users/{{dm_user_id}}.html'><span class=user_name>{{dm_user_name}}</span></a>
			<span class=date>{{dm_date}}</span>
		<tr>
		<td class=text>
			{{ESCAPE}}="NONE" NAME=dm_msg>
		<tr>
		<td class=empty>&nbsp;
	{{/loop_close}}
	</table>
	{{#multi_page}}
		<TMPL_INCLUDE NAME="inc/pages.tpl">
	{{/if_close}}
{{/if_close}}
