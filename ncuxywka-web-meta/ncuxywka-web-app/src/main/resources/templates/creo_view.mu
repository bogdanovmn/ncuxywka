<center>
{{#quarantine}}
	<div class=header>ЛЕТ<span class=letter>А</span>ЛЬНЫЙ ИС<span class=letter>X</span>OД:</div>
<TMPL_ELSE>
	{{#deleted}}
		<div class=header>МУС<span class=letter>О</span>РНЫЙ К<span class=letter>О</span>НТЕЙНЕР</div>
	<TMPL_ELSE>
		{{#neofuturism}}
			<div class=header><span class=letter>NEO</span>ФУТУРИ<span class=letter>Z</span>М:</div>
		<TMPL_ELSE>
			<div class=header>АНАЛИ<span class=letter>Z</span>:</div>
		{{/if_close}}
	{{/if_close}}
{{/if_close}}
<p>
<a href='/users/{{c_user_id}}.html'>
	<span class=creo_author>{{c_alias}}</span></a>, 
	<span class=creo_date>{{c_post_date}}</span>
	&nbsp;&nbsp;<a href='/print/{{c_id}}.html'><img alt='Для печати' src='/img/printer.gif'></a>
</p>

<h1 class=creo_title>{{c_title}}</h1>
</center>

{{#deleted}}
	<p class='deleted_msg'>
		{{#plagiarist}}
			Анализ отправлен в регистратуру для поиска хозяина
		<TMPL_ELSE>
			Уборщица шваброй махнула и случайно удалила этот анализ...
		{{/if_close}}
	</p>
<TMPL_ELSE>
	<div class=creo_body>{{ESCAPE}}="NONE" NAME=c_body></div>
{{/if_close}}
<br><br>
<hr>

<center>

{{^deleted}}

{{#can_select}}
<form method=post action='/select/add/{{creo_id}}'>
	<input type=submit value='Добавить этот анализ в мое избранное!'><br><br>
</form>
{{/if_close}}
<table class=creo_vote_result>
<tr>
<td>
	<p class=note>Уже проголосовало {{votes}} пациэнтов</p>
	
	{{^has_vote_power}}
		<p class=note>У вас еще слишком мало опыта чтобы голосовать!</p>
	{{/unless_close}}

	{{#already_voted}}
		<p class=note>Вы уже голосовали за этот анализ...</p>

	
		{{#votes_rank}}
			<td>
			<img alt="{{votes_rank_title}}" src="/img/stamps/{{votes_rank}}.jpg">
		{{/if_close}}
	{{/if_close}}
</table>
{{#can_vote}}
	<div class=header><span class=letter>О</span>ЦЕНИ:</div>
	<p>
	<form method=post action='/vote'>
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
		<input type=hidden name=creo_id value="{{creo_id}}">
	</form>
{{/if_close}}

{{#ad_votes}}
	<table class=creo_votes>
	{{#ad_votes}}
		<tr>
		<td><a href="/usersa/{{cv_user_id}}.html">{{cv_user_name}}</a>
		<td>{{cv_ip}}
		<td>{{cv_vote}}
		<td>{{cv_date}}
		<td>{{cv_delta}}

	{{/loop_close}}
	</table>
{{/if_close}}
<hr>

{{/unless_close}}

{{> social_networks }}

{{#comments}}
	<div class=header>ДИАГНО<span class=letter>Z</span>Ы:</div>
{{/if_close}}

{{> inc/comments }}

{{^deleted}}
	<div class=header>П<span class=letter>О</span>СТАВЬ Д<span class=letter>И</span>АГНО<span class=letter>Z</span>!</div>
	
	{{> inc/comments_post_form }}
{{/unless_close}}

</center>
