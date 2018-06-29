<h1>ЛИЧНО<span class=letter>Е</span> ДЕЛО: "<span class=letter>{{u_name}}</span>"</h1>


<table class=user_edit_menu>
<tr>
	<td id="m_b_info" class=selected onclick="select_block('b_info');">Анкета
	<td id="m_b_actions" onclick="select_block('b_actions');">Активность
	<TMPL_IF creo_list>
		<td id="m_b_creos" onclick="select_block('b_creos');">Анализы
	</TMPL_IF>

	<TMPL_IF selected_creo_list> 
		<td id="m_b_favorite" onclick="select_block('b_favorite');">Избранное
	</TMPL_IF>

	<TMPL_IF creo_list>
		<td id="m_b_lexicon" onclick="select_block('b_lexicon');">Лексикон
	</TMPL_IF>
</table>


<div class="user_list_open" id="b_info">
	<TMPL_IF avatar>
		<p><img src='/{{avatar}}_thumb' alt='Фото'><br><br>
	</TMPL_IF>

	<p>
		<b>Имя:</b>
		<br>
		{{u_name}}
		<br>
		<br>
		<TMPL_IF u_city>
			<b>Город:</b>
			<br>
			{{u_city}}
			<br>
			<br>
		</TMPL_IF>

		<TMPL_IF u_hates>
			<b>Жалуется:</b>
			<br>
			{{ESCAPE}}="NONE" NAME=u_hates>
			<br>
			<br>
		</TMPL_IF>

		<TMPL_IF u_loves>
			<b>Отношение к лекарствам:</b>
			<br>
			{{ESCAPE}}="NONE" NAME=u_loves>
			<br>
			<br>
		</TMPL_IF>

		<TMPL_IF u_about>
			<b>О себе:</b>
			<br>
			{{ESCAPE}}="NONE" NAME=u_about>
			<br>
			<br>
		</TMPL_IF>

		<b>Дата регистрации:</b>
		<br>
		{{u_reg_date}}
		<br>
		<br>
		<b>Дата изменения данных:</b>
		<br>
		{{u_edit_date}}
	</p>
</div>


<div class="user_list" id="b_actions">
	<p>
		<b>Пульс пациэнта:</b>
		<div id=user_activity_plot class=user_activity_plot></div>
		<br>
		<br>
		<b>Диагнозы:</b>
		<br>
		<TMPL_IF u_from_comments_count>
			<a href='/talks/from/{{u_id}}'>Отправленные пациэнтом ({{u_from_comments_count}})</a>
		<TMPL_ELSE>
			Отправленные пациэнтом (0)
		</TMPL_IF>
		<br>
		<TMPL_IF u_for_comments_count>
			<a href='/talks/for/{{u_id}}'>Полученные пациэнтом ({{u_for_comments_count}})</a>
		<TMPL_ELSE>
			Полученные пациэнтом (0)
		</TMPL_IF>
		<br>
		<br>
		<b>Отношение к окружающим пациэнтам:</b>
		<br>
		{{user_votes_out_rank_title}}

		<TMPL_IF user_auth>
			<br>
			<br>
			<TMPL_UNLESS can_delete>
				[ <a href="/pm/dialog/{{u_id}}/">Отправить этому пациэнту личное сообщение</a> ]
			</TMPL_UNLESS>
		</TMPL_IF>
	</p>
</div>

<TMPL_IF creo_list>
	<a id=creos></a>
	<div class="user_list" id="b_creos">
	<table class=user_creo_list>
		<tr>
		<th class=date>Дата<th class=title>Название<th class=comments>Диаг<th class=resume>Голоса
	<TMPL_LOOP creo_list>
		<tr>
			<td class=date>
				{{cl_post_date}}
			<td class=title>
				<TMPL_IF cl_quarantine><s></TMPL_IF>
				<a href="/creos/{{ESCAPE}}=URL NAME=cl_id>.html">{{cl_title}}</a>
				<TMPL_IF cl_quarantine></s></TMPL_IF>
				<TMPL_UNLESS cl_self_vote>
					<span class=subnote>?</span>
				</TMPL_UNLESS>
			<td class=comments>
				{{cl_comments_count}}
			<td class=resume>{{cl_votes_count}}
	</TMPL_LOOP>
	</table>
	</div>
</TMPL_IF>

<TMPL_IF selected_creo_list>
	<div class="user_list" id="b_favorite">
	<table class=creo_list>
		<tr>
			<th class=date>Дата
			<th class=user>Пациэнт
			<th class=title>Название
			<th class=comments>Диаг
			<th class=resume>Голоса
			<TMPL_IF can_delete><th class=action>...</TMPL_IF>
	<TMPL_LOOP selected_creo_list>
		<tr>
			<td class=date>
				{{scl_post_date}}
			<td class=user>
				<TMPL_IF scl_user_id>
					<a href="/users/{{scl_user_id}}.html">{{scl_alias}}</a>
				<TMPL_ELSE>
					{{scl_alias}}
				</TMPL_IF>
			<td class=title>
				<TMPL_IF scl_quarantine><s></TMPL_IF>
				<a href="/creos/{{ESCAPE}}=URL NAME=scl_id>.html">{{scl_title}}</a>
				<TMPL_IF scl_quarantine></s></TMPL_IF>
			<td class=comments>
				{{scl_comments_count}}
			<td class=resume>{{scl_votes_count}}
			<TMPL_IF scl_can_delete>
				<td class=action><a href='/select/del/{{scl_id}}'>[X]</a>
			</TMPL_IF>
	</TMPL_LOOP>
	</table>
	</div>
</TMPL_IF>

<TMPL_IF words_cloud>
	<div class="user_list" id="b_lexicon">
	<TMPL_LOOP words_cloud>
			<div class=words_cloud_title>
				<span class=title>{{wc_title}}</span>
				<span class=note>
					показано {{wc_visible}}/{{wc_uniq}} словарного запаса
					, относительный уровень кругозора: {{wc_perfect}}%
				</span>
			</div>
			<div class=words_cloud_{{wc_size}}>
			<TMPL_LOOP wc_data>
				<span style='font-size: {{font_size}}px; <TMPL_IF font_size_sub_minimum>color: gray;</TMPL_IF>'>
					{{word}}
				</span>
				&nbsp;
			</TMPL_LOOP>
			</div>
	</TMPL_LOOP>
	</div>
</TMPL_IF>

<TMPL_IF ad_votes>
	<table class=creo_votes>
	<TMPL_LOOP ad_votes>
			<tr>
			<td class=creo_title><a href="/creosa/{{uv_creo_id}}.html">{{uv_user_name}} - {{uv_creo_title}}</a>
		<td class=gray>{{uv_ip}}
		<td>{{uv_vote}}
		<td class=gray>{{uv_date}}
		<td>{{uv_delta}}

	</TMPL_LOOP>
	</table>
</TMPL_IF>



<script language="javascript" type="text/javascript">

$(document).ready(function() {
	if (location.hash == '#creos') {
		select_block('b_creos');
	};
});


var plot_conf_total = {
	series: {
		lines: {
			show: true,
			lineWidth: 1
		}
	},
	colors: ["#00ff00"],
	xaxis: {
		ticks: 4,
		mode: "time",
		timeformat: "%Y"
	},
	yaxis: {
		ticks: 0
	},
	grid: {
		borderWidth: 0
	}
};

$.plot(
	$("#user_activity_plot"), 
	[{ data: {{NAME}}=u_activity_chart_data ESCAPE="JS"> }], 
	plot_conf_total
);


function select_block(id) {
	var blocks = ['b_info', 'b_actions', 'b_creos', 'b_favorite', 'b_lexicon'];
	for (var i = 0; i < blocks.length; i++) {
		var b = document.getElementById(blocks[i]);
		if (b) {
			if (blocks[i] == id) {
				b.style.display = "block";
				document.getElementById("m_" + blocks[i]).setAttribute("class", "selected");
			}
			else {
				b.style.display = "none";
				document.getElementById("m_" + blocks[i]).setAttribute("class", "");
			}
		}
	}
}
</script>
