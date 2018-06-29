<div class=search_menu>
	<form method=post action="/search/">
		<input type=text name=search_text>
		<input type=submit value="Найти">
	</form>
</div>

<center>
	<TMPL_IF quarantine>
		<h1>К<span class=letter>А</span>Р<span class=letter>A</span>НТИН</h1>
		<p class=note>Здесь находятся все анализы, которые по мнению Главврача, являются ужасными и опасными для пациэнтов Психуюшки.</p>
		<p>&nbsp;</p>
	</TMPL_IF>

	<TMPL_IF deleted>
		<h1>МУС<span class=letter>О</span>РНЫЙ К<span class=letter>О</span>НТЕЙНЕР</h1>
		<p class=note>Здесь находятся все забракованные анализы</p>
		<p>&nbsp;</p>
	</TMPL_IF>

	<TMPL_IF regular_creo_list>
		<h1>АНАЛИ<span class=letter>Z</span>Ы</h1>
		<p class=note>Здесь находятся все анализы. Если вы хотите сдать свои анализы - жмите <a href='/add_creo/'>сюда</a></p>
		<p>&nbsp;</p>
	</TMPL_IF>
	
	<TMPL_IF neofuturism>
		<h1><span class=letter>NEO</span>ФУТУРИ<span class=letter>Z</span>М</h1>
		<p class=note>Здесь находятся все неофутуризмы. Подробнее читайте <a href='/neo_faq_room/'>тут</a></p>
		<p>&nbsp;</p>
	</TMPL_IF>
</center>

<p class=jump>
<TMPL_LOOP jump_links>
	<TMPL_IF selected>
		<span>&nbsp;{{title}}&nbsp;</span>
	<TMPL_ELSE>
		<a href='/{{type}}/{{name}}/'>&nbsp;{{title}}&nbsp;</a>
	</TMPL_IF> 
</TMPL_LOOP>
</p>

<table class=creo_list>
	<tr>
	<th class=date>Дата{{#alex_jile}}<th class=user>Пациэнт{{/alex_jile}}<th class=title>Название<th class=comments>Диаг<th class=resume>Голосов
<TMPL_LOOP creo_list>
	<tr>
		<td class=date>
			{{cl_post_date}}
		<TMPL_UNLESS alex_jile>
			<td class=user>
				<TMPL_IF cl_user_id>
					<a href='/users/{{cl_user_id}}.html'>{{cl_alias}}</a>
				<TMPL_ELSE>
					{{cl_alias}}
				</TMPL_IF>
		</TMPL_UNLESS>
		<td class=title>
			<a href="/creos/{{ESCAPE}}=URL NAME=cl_id>.html">{{cl_title}}</a>
			<TMPL_UNLESS cl_self_vote>
				<span class=subnote>?</span>
			</TMPL_UNLESS>
		<td class=comments>
			{{cl_comments}}
		<td class=resume>
			{{cl_votes}}
</TMPL_LOOP>
</table>

<TMPL_IF quarantine>
	<div class=deleted_creos_link>
		<a href="/deleted/">Мусорный контейнер</a>
	</div>
</TMPL_IF>
