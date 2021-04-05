{{#layout}}

<h1>ЛИЧНО<span class=letter>Е</span> ДЕЛО: "<span class=letter>{{user.data.info.name}}</span>"</h1>


<table class=user_edit_menu>
<tr>
	<td id="m_b_info" class=selected onclick="select_block('b_info');">Анкета
	<td id="m_b_actions" onclick="select_block('b_actions');">Активность
	{{#user.hasCreos}}
		<td id="m_b_creos" onclick="select_block('b_creos');">Анализы
	{{/user.hasCreos}}

	{{#user.hasFavoriteCreos}}
		<td id="m_b_favorite" onclick="select_block('b_favorite');">Избранное
	{{/user.hasFavoriteCreos}}

	{{#user.hasCreos}}
		<td id="m_b_lexicon" onclick="select_block('b_lexicon');">Лексикон
	{{/user.hasCreos}}
</table>


<div class="user_list_open" id="b_info">
	{{#avatar}}
		<p><img src='/{{.}}_thumb' alt='Фото'><br><br>
	{{/avatar}}

	<p>
		<b>Имя:</b>
		<br>
		{{user.data.info.name}}
		<br>
		<br>
		{{#user.data.details.city}}
			<b>Город:</b>
			<br>
			{{.}}
			<br>
			<br>
		{{/user.data.details.city}}

		{{#user.data.details.hates}}
			<b>Жалуется:</b>
			<br>
			{{{.}}}
			<br>
			<br>
		{{/user.data.details.hates}}

		{{#user.data.details.loves}}
			<b>Отношение к лекарствам:</b>
			<br>
			{{{.}}}
			<br>
			<br>
		{{/user.data.details.loves}}

		{{#user.data.details.about}}
			<b>О себе:</b>
			<br>
			{{{.}}}
			<br>
			<br>
		{{/user.data.details.about}}

		<b>Дата регистрации:</b>
		<br>
		{{user.data.info.created}}
		<br>
		<br>
		<b>Дата изменения данных:</b>
		<br>
		{{user.data.details.updated}}
	</p>
</div>


<div class="user_list" id="b_actions">
	<p>
		<b>Пульс пациэнта:</b>
		<div id=user_activity_plot class=user_activity_plot style="width:400px;height:80px"></div>
		<br>
		<br>
		<b>Диагнозы:</b>
		<br>
		{{#user.hasCommentsOut}}
			<a href="{{layout.contextPath}}/comments?from={{user.data.info.id}}">Отправленные пациэнтом ({{user.data.statistic.commentsOut}})</a>
		{{/user.hasCommentsOut}}
		<br>
		{{#user.hasCommentsIn}}
			<a href="{{layout.contextPath}}/comments?to={{user.data.info.id}}">Полученные пациэнтом ({{user.data.statistic.commentsIn}})</a>
		{{/user.hasCommentsIn}}
		<br>
		<br>
		<b>Отношение к окружающим пациэнтам:</b>
		<br>
		{{user.data.statistic.votesOutRankTitle}}

		{{^canSendPersonalMessage}}
			<br>
			<br>
			[ <a href="{{layout.contextPath}}/pm/dialog/{{user.data.info.id}}/">Отправить этому пациэнту личное сообщение</a> ]
		{{/canSendPersonalMessage}}
	</p>
</div>

{{#user.hasCreos}}
	<a id=creos></a>
	<div class="user_list" id="b_creos">
		<table class=user_creo_list>
			<tr>
				<th class=date>Дата</th>
				<th class=title>Название</th>
				<th class=comments>Диаг</th>
				<th class=resume>Голоса</th>
			</tr>
			{{#user.creos}}
				<tr>
					<td class=date>{{creo.created}}</td>
					<td class=title>
						{{#cl_quarantine}}<s>{{/cl_quarantine}}
						<a href="{{layout.contextPath}}/creos/{{creo.id}}">{{creo.title}}</a>
						{{#cl_quarantine}}</s>{{/cl_quarantine}}
						{{^cl_self_vote}}
							<span class=subnote>?</span>
						{{/cl_self_vote}}
					</td>
					<td class=comments>{{statistic.comments}}</td>
					<td class=resume>{{statistic.votes}}</td>
				</tr>
			{{/user.creos}}
		</table>
	</div>
{{/user.hasCreos}}

{{#user.hasFavoriteCreos}}
	<div class="user_list" id="b_favorite">
	<table class=creo_list>
		<tr>
			<th class=date>Дата
			<th class=user>Пациэнт
			<th class=title>Название
			<th class=comments>Диаг
			<th class=resume>Голоса
			{{#isCurrentUser}}<th class=action>...{{/isCurrentUser}}
	{{#user.favoriteCreos}}
		<tr>
			<td class=date>
				{{creo.created}}
			<td class=user>
				<a href="{{layout.contextPath}}/users/{{user.id}}">{{this.user.name}}</a>
			<td class=title>
				{{#scl_quarantine}}<s>{{/scl_quarantine}}
				<a href="{{layout.contextPath}}/creos/{{creo.id}}">{{creo.title}}</a>
				{{#scl_quarantine}}</s>{{/scl_quarantine}}
			<td class=comments>
				{{statistic.comments}}
			<td class=resume>{{statistic.votes}}
			{{#isCurrentUser}}
				<td class=action><a href='{{layout.contextPath}}/select/del/{{creo.id}}'>[X]</a>
			{{/isCurrentUser}}
	{{/user.favoriteCreos}}
	</table>
	</div>
{{/user.hasFavoriteCreos}}

{{#words_cloud.0}}
	<div class="user_list" id="b_lexicon">
	{{#words_cloud}}
			<div class=words_cloud_title>
				<span class=title>{{wc_title}}</span>
				<span class=note>
					показано {{wc_visible}}/{{wc_uniq}} словарного запаса
					, относительный уровень кругозора: {{wc_perfect}}%
				</span>
			</div>
			<div class=words_cloud_{{wc_size}}>
			{{#wc_data}}
				<span style='font-size: {{font_size}}px; {{#font_size_sub_minimum}}color: gray;{{/font_size_sub_minimum}}'>
					{{word}}
				</span>
				&nbsp;
			{{/wc_data}}
			</div>
	{{/words_cloud}}
	</div>
{{/words_cloud.0}}

<script language="javascript" type="text/javascript">

$(document).ready(function() {
	if (location.hash === '#creos') {
		select_block('b_creos');
	}
});


const plot_conf_total = {
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
		timeformat: "%Y",
		min: new Date("2010-01-01").getTime(),
		max: new Date().getTime()
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
	[{
		data: [
			{{#user.activityData}}
				[new Date('{{day}}').getTime(), {{value}}],
			{{/user.activityData}}
		]
	}],
	plot_conf_total
);


function select_block(id) {
	var blocks = ['b_info', 'b_actions', 'b_creos', 'b_favorite', 'b_lexicon'];
	for (var i = 0; i < blocks.length; i++) {
		var b = document.getElementById(blocks[i]);
		if (b) {
			if (blocks[i] === id) {
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

{{/layout}}
