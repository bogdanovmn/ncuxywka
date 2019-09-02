{{#layout}}

<div class=search_menu>
	<form method=post action="/search/">
		<input type=text name=search_text>
		<input type=submit value="Найти">
	</form>
</div>

{{#quarantine}}
	<h1>К<span class=letter>А</span>Р<span class=letter>A</span>НТИН</h1>
	<p class=note>Здесь находятся все анализы, которые по мнению Главврача, являются ужасными и опасными для пациэнтов Психуюшки.</p>
	<p>&nbsp;</p>
{{/quarantine}}

{{#deleted}}
	<h1>МУС<span class=letter>О</span>РНЫЙ К<span class=letter>О</span>НТЕЙНЕР</h1>
	<p class=note>Здесь находятся все забракованные анализы</p>
	<p>&nbsp;</p>
{{/deleted}}

{{#isRegularCreoList}}
	<h1>АНАЛИ<span class=letter>Z</span>Ы</h1>
	<p class=note>Здесь находятся все анализы. Если вы хотите сдать свои анализы - жмите <a href='{{layout.contextPath}}/add_creo/'>сюда</a></p>
	<p>&nbsp;</p>
{{/isRegularCreoList}}

<p class=jump>
{{#jump_links}}
	{{#selected}}
		<span>&nbsp;{{title}}&nbsp;</span>
	{{/selected}}
	{{#selected}}
		<a href='{{layout.contextPath}}/{{type}}/{{name}}/'>&nbsp;{{title}}&nbsp;</a>
	{{/selected}}
{{/jump_links}}
</p>

<table class=creo_list>
	<tr>
	<th class=date>Дата{{#alex_jile}}<th class=user>Пациэнт{{/alex_jile}}<th class=title>Название<th class=comments>Диаг<th class=resume>Голосов
{{#creos}}
	<tr>
		<td class=date>
			{{creo.created}}
		{{^alex_jile}}
			<td class=user>
			<a href='{{layout.contextPath}}/users/{{creo.user.id}}'>{{creo.user.name}}</a>
		{{/alex_jile}}
		<td class=title>
			<a href="{{layout.contextPath}}/creos/{{creo.id}}">{{creo.title}}</a>
			{{^isCurrentUserVoted}}
				<span class=subnote>?</span>
			{{/isCurrentUserVoted}}
		<td class=comments>
			{{statistic.comments}}
		<td class=resume>
			{{statistic.votes}}
{{/creos}}
</table>

{{#quarantine}}
	<div class=deleted_creos_link>
		<a href="{{layout.contextPath}}/deleted/">Мусорный контейнер</a>
	</div>
{{/quarantine}}

{{/layout}}
