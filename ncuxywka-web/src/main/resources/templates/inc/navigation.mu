{{#menu.items}}
	<div class="card">
		{{#subMenu}}
			<div class="card-header">{{title}}</div>
			<div class="card-body">
				{{#items}}
					<p>
						<a href="{{layout.contextPath}}{{url}}">{{title}}</a>
						{{#note}}
							<span class=note>({{note}})</span>
						{{/note}}
					</p>
				{{/items}}
			</div>
		{{/subMenu}}
	</div>
{{/menu.items}}

<!-- Auth data -->

{{^isGuest}}
	<div class="card">
		<div class="card-header">Бюллетень</div>
		<div class="card-body">
			<p class=hello>Хайц, <a href="/users/{{user.id}}"><span class=user_name>{{user.name}}</span></a>!<br><br></p>
			<p class=submenu>&#149;&nbsp;<a href="/settings/">Настройки</a></p>
			<p class=submenu>&#149;
				{{#newMessages}}
					<a href='/pm/in/'><span class=new_messages>Личные сообщения</span></a>
					<br>
					<span class=subnote>Новые: {{new_messages}}</span>
				{{/newMessages}}
				{{^newMessages}}
					<a href='/pm/in/'>Личные сообщения</a>
				{{/newMessages}}
			</p>
			<p class="submenu">&#149;&nbsp;<a href="/diagnoses?from={{user.id}}">Мои диагнозы</p>
			<p class=submenu>&#149;&nbsp;<a href="/diagnoses?to={{user.id}}">Диагнозы к моим анализам</a></p>
			{{#lcfm_post_date}}
				<br><span class=subnote>{{lcfm_post_date}} от {{lcfm_alias}}</span>
			{{/lcfm_post_date}}
			<p class=submenu>&#149;&nbsp;<a href="/auth/out">Выйти</a></p>
		</div>
	</div>
{{/isGuest}}