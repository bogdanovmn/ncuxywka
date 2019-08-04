{{#menu.items}}
	<table class=main_menu_block>
	{{#subMenu}}
		<tr class="title"><td>{{title}}</td></tr>
		<tr><td><table class="main_menu">
		{{#items}}
			<tr><td>
				<a href="{{layout.contextPath}}{{url}}">{{title}}</a>
				{{#note}}
					<span class=note>({{note}})</span>
				{{/note}}
			</td></tr>
		{{/items}}
		</table></td></tr>
	{{/subMenu}}
{{/menu.items}}

<!-- Auth data -->

<table class=info>
<tr>
{{^isGuest}}
	<td class=title>Бюллетень 
	<tr>
	<td>
	<p class=hello>Хайц, <a href="/users/{{user.id}}"><span class=user_name>{{user.name}}</span></a>!<br><br>
	<p class=submenu>&#149;&nbsp;<a href="/settings/">Настройки</a>
	<p class=submenu>&#149;
		{{#newMessages}}
			<a href='/pm/in/'><span class=new_messages>Личные сообщения</span></a>
			<br>
			<span class=subnote>Новые: {{new_messages}}</span>
		{{/newMessages}}
		{{^newMessages}}
			<a href='/pm/in/'>Личные сообщения</a>
		{{/newMessages}}
	<p class=submenu>&#149;&nbsp;<a href="/diagnoses?from={{user.id}}">Мои диагнозы</a>
	<p class=submenu>&#149;&nbsp;<a href="/diagnoses?to={{user.id}}">Диагнозы к моим анализам</a>
	{{#lcfm_post_date}}
		<br><span class=subnote>{{lcfm_post_date}} от {{lcfm_alias}}</span>
	{{/lcfm_post_date}}
	<p class=submenu>&#149;&nbsp;<a href="/auth/out">Выйти</a>
{{/isGuest}}
</table>