{{#layout}}

{{#creo.isQuarantine}}
	<div class=header>ЛЕТ<span class=letter>А</span>ЛЬНЫЙ ИС<span class=letter>X</span>OД:</div>
{{/creo.isQuarantine}}
{{^creo.isQuarantine}}
	{{#creo.isDeleted}}
		<div class=header>МУС<span class=letter>О</span>РНЫЙ К<span class=letter>О</span>НТЕЙНЕР</div>
	{{/creo.isDeleted}}
	{{^creo.isDeleted}}
		<div class=header>АНАЛИ<span class=letter>Z</span>:</div>
	{{/creo.isDeleted}}
{{/creo.isQuarantine}}

<p>
<a href='{{layout.contextPath}}/users/{{creo.user.id}}'>
	<span class=creo_author>{{creo.user.name}}</span></a>,
	<span class=creo_date>{{creo.info.created}}</span>
	&nbsp;&nbsp;<a href='{{layout.contextPath}}/print/{{creo.info.id}}'><img alt='Для печати' src='{{layout.contextPath}}/img/printer.gif'></a>
</p>

<h1 class=creo_title>{{creo.info.title}}</h1>

{{#creo.deleted}}
	<p class='deleted_msg'>
		{{#creo.user.muted}}
			Анализ отправлен в регистратуру для поиска хозяина
		{{/creo.user.muted}}
		{{^creo.user.muted}}
			Уборщица шваброй махнула и случайно удалила этот анализ...
		{{/creo.user.muted}}
	</p>
{{/creo.deleted}}
{{^creo.deleted}}
	<div class=creo_body><pre>{{{creo.text}}}</pre></div>
{{/creo.deleted}}

<hr>

{{^creo.deleted}}

{{^isFavorite}}
	<form method=post action='{{layout.contextPath}}/favorite-creos'>
		<input type=hidden name=id value='{{creo.info.id}}'>
		<input type=submit value='Добавить этот анализ в мое избранное!'>
	</form>
{{/isFavorite}}

<table class=creo_vote_result>
<tr>
<td>
	<p class=note>Уже проголосовало {{creo.statistic.votes}} пациэнтов</p>
	
	{{^withVotePower}}
		<p class=note>У вас еще слишком мало опыта чтобы голосовать!</p>
	{{/withVotePower}}

	{{#isVoted}}
		<p class=note>Вы уже голосовали за этот анализ...</p>
	
		{{#votesRank}}
			<td>
			<img alt="{{votesRankTitle}}" src="{{layout.contextPath}}/img/stamps/{{votesRank}}.jpg">
		{{/votesRank}}
	{{/isVoted}}
</table>

{{#canVote}}
	<div class=header><span class=letter>О</span>ЦЕНИ:</div>
	<p>
	<form method=post action='{{layout.contextPath}}/votes'>
		<table class=vote> 
		<tr>
		<td><input type=radio name=vote_id value='1'><td>Психоз!
		<tr>
		<td><input type=radio name=vote_id value='2'><td>Шизофрения
		<tr>
		<td><input type=radio name=vote_id value='3'><td>паФрейду
		<tr>
		<td><input type=radio name=vote_id value='4'><td>Параноя
		<tr>
		<td><input type=radio name=vote_id value='5'><td>Пациэнт нуждается в лоботомии!
		<tr>
		<td colspan=2><br><input type=submit value='Оценить'>
		</table>
		<input type=hidden name=creo_id value="{{creo.info.id}}">
	</form>
{{/canVote}}

<hr>

{{/creo.deleted}}

{{> social_networks }}

{{#comments.0}}
	<div class=header>ДИАГНО<span class=letter>Z</span>Ы:</div>
{{/comments.0}}

{{> inc/comments }}

{{^creo.deleted}}
	<div class=header>П<span class=letter>О</span>СТАВЬ Д<span class=letter>И</span>АГНО<span class=letter>Z</span>!</div>
	
	{{> inc/comments_post_form }}
{{/creo.deleted}}

{{/layout}}