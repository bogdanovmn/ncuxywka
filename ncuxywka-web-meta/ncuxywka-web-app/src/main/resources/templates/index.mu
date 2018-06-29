<table class=main_news>
<tr>
<td class=about>
	<center>
	
	<table class=info_about>
		<tr>
		<td class=title>КУДА Я ПОПАЛ?
		<tr>
		<td><b>Психуюшка</b> - это литературное онлайн сообщество, полная свобода слова и отсутствие цензуры. <a href='/faq_room/'>Подробнее...</a>
	</table>
	
	<table class=info_about>
	<tr>
	<td class=title>ЗАЧЕМ?
	<tr>
	<td><p><a href='/creos/'>Почитать анализы</a>
		<p><a href='/talks/'>Поставить диагнозы</a>
		<p><a href='/add_creo/'>Прислать свои анализы</a>
	</table>
	
	<table class=info_news>
	<tr>
	<td class=title>Новички
	<tr>
	<td>
		{{#new_users}}
			<p>
			<a href="/users/{{nu_id}}.html">{{nu_name}}</a>
			<br>
			<span class=note>{{nu_reg_date}}</span>
			</p>
		{{/loop_close}}
	</table>
	
	</center>
<td>
	<center><img width=465px alt='ПСИХУЮШКА.COM' src='/img/{{skin_pic_main}}'></center>
</table>		

<table class=news>
<tr>
	<td class=title>Пси-Новости
<tr>
	<td class=info>
		{{#news}}
			<p>
			<b>{{n_post_date}}</b>
			от <a class=author href="/users/{{n_user_id}}.html">{{n_user_name}}</a>
			<br>
			{{n_msg}}
			</p>
		{{/loop_close}}
		<div class=more>
			<a href="/news/">Архив новостей</a>
		</div>
</table>

<div class=last_creos_title>Последние <a href='/creos/'>анализы</a>:</div>
{{#last_creos}}
	<table class=creo_preview>
		<tr class=info>
			<td>
				<a href="/creos/{{ESCAPE}}=URL NAME=lc_id>.html">
					<b>{{lc_alias}}</b> : {{lc_title}}
				</a>
			<td class=date>
				<b>{{lc_post_date}}</b>
		<tr class=info>
			<td colspan=2 class=diag>
				Диагнозов: {{lc_comments_count}}
		<tr class=text>
			<td colspan=2>
				<table class=creo_preview_text>
				<tr>
					<td class=avatar>
						{{#lc_avatar}}
							<center><img alt='{{lc_alias}}' src='/{{lc_avatar}}_thumb'></center>
						<TMPL_ELSE>
							&nbsp;
						{{/if_close}}
					<td class=text>
						{{ESCAPE}}="NONE" NAME=lc_body>
						{{#lc_cuted}}
							<br><span class=note>--> Ампутировано <--</span>
						{{/if_close}}
				</table>
		{{#lc_more}}
			<tr class=more_creos>
				<td colspan=2>
					{{#lc_more}}
						<i>{{lc_post_date}}</i>
						<a href="/creos/{{ESCAPE}}=URL NAME=lc_id>.html">
							{{lc_title}}
						</a>
						<i>&nbsp;({{lc_comments_count}} диаг.)</i>{{#__last__}},&nbsp;{{/__last__}}
						<br>
					{{/loop_close}}
		{{/if_close}}
	</table>
{{/loop_close}}
