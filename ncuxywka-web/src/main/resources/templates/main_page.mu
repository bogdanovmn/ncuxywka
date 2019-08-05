{{#layout}}

<table class=main_news>
<tr>
<td class=about>
	<center>
	
	<table class=info_about>
		<tr>
		<td class=title>КУДА Я ПОПАЛ?
		<tr>
		<td><b>Психуюшка</b> - это литературное онлайн сообщество, полная свобода слова и отсутствие цензуры. <a href='{{layout.contextPath}}/faq/'>Подробнее...</a>
	</table>
	
	<table class=info_about>
	<tr>
	<td class=title>ЗАЧЕМ?
	<tr>
	<td><p><a href='{{layout.contextPath}}/creos/'>Почитать анализы</a>
		<p><a href='{{layout.contextPath}}/diagnoses/'>Поставить диагнозы</a>
		<p><a href='{{layout.contextPath}}/add_creo/'>Прислать свои анализы</a>
	</table>
	
	<table class=info_news>
	<tr>
	<td class=title>Новички
	<tr>
	<td>
		{{#new_users}}
			<p>
			<a href="{{layout.contextPath}}/users/{{id}}">{{name}}</a>
			<br>
			<span class=note>{{reg_date}}</span>
			</p>
		{{/new_users}}
	</table>
	
	</center>
<td>
	<center><img width=465px alt='ПСИХУЮШКА.COM' src='{{layout.contextPath}}/img/{{skin.img.main}}'></center>
</table>		

<table class=news>
<tr>
	<td class=title>Пси-Новости
<tr>
	<td class=info>
		{{#news}}
			<p>
			<b>{{post_date}}</b>
			от <a class=author href="{{layout.contextPath}}/users/{{user.id}}">{{user.name}}</a>
			<br>
			{{message}}
			</p>
		{{/news}}
		<div class=more>
			<a href="{{layout.contextPath}}/news/">Архив новостей</a>
		</div>
</table>

<div class=last_creos_title>Последние <a href='{{layout.contextPath}}/creos/'>анализы</a>:</div>
{{#last_creos}}
	<table class=creo_preview>
		<tr class=info>
			<td>
				<a href="{{layout.contextPath}}/creos/{{id}}">
					<b>{{alias}}</b> : {{title}}
				</a>
			<td class=date>
				<b>{{postDate}}</b>
		<tr class=info>
			<td colspan=2 class=diag>
				Диагнозов: {{commentsCount}}
		<tr class=text>
			<td colspan=2>
				<table class=creo_preview_text>
				<tr>
					<td class=avatar>
						{{#avatar}}
							<center><img alt='{{alias}}' src='/{{avatar}}_thumb'></center>
						{{/avatar}}
						{{^avatar}}
							&nbsp;
						{{/avatar}}
					<td class=text>
						{{body}}
						{{#cuted}}
							<br><span class=note>--> Ампутировано <--</span>
						{{/cuted}}
				</table>
		{{#more.0}}
			<tr class=more_creos>
				<td colspan=2>
					{{#more}}
						<i>{{post_date}}</i>
						<a href="{{layout.contextPath}}/creos/{{id}}>">
							{{title}}
						</a>
						<i>&nbsp;({{commentsCount}} диаг.)</i>{{#__last__}},&nbsp;{{/__last__}}
						<br>
					{{/more}}
		{{/more.0}}
	</table>
{{/last_creos}}
{{/layout}}
