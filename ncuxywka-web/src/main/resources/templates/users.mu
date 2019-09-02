<h1>ПАЦИЭНТ<span class=letter>Ы</span></h1>

<table class=user_edit_menu>
<tr>
	<td id="m_diag" class=selected onclick="select_block('diag');">По диагнозу
	<td id="m_date" onclick="select_block('date');">По дате поступления
	<td id="m_letter" onclick="select_block('letter');">По алфавиту
</table>

<div class="user_list_open" id="diag">

	<table class=users>
	<tr>
	<td>
	{{#rank_1}}
		<h2 class=user_rank>Легенды Психуюшки</h2>
		{{#rank_1}}
			<p><a href='{{layout.contextPath}}/users/{{ru_id}}.html'>{{ru_name}}</a></p>
		{{/loop_close}}
	{{/if_close}}
	</table>

	<table class=users>
	<tr>
	<td>
		{{#rank_2}}
			<h2 class=user_rank>Шизофреники</h2>
			{{#rank_2}}
				<p><a href='{{layout.contextPath}}/users/{{ru_id}}.html'>{{ru_name}}</a></p>
			{{/loop_close}}
		{{/if_close}}
		<td>
		{{#rank_3}}
			<h2 class=user_rank>Пациэнты Фрейда</h2>
			{{#rank_3}}
				<p><a href='{{layout.contextPath}}/users/{{ru_id}}.html'>{{ru_name}}</a></p>
			{{/loop_close}}
		{{/if_close}}
		<td>
		{{#rank_4}}
			<h2 class=user_rank>Параноики</h2>
			{{#rank_4}}
				<p><a href='{{layout.contextPath}}/users/{{ru_id}}.html'>{{ru_name}}</a></p>
			{{/loop_close}}
		{{/if_close}}
	</table>

	<table class=users>
	<tr>
	<td>
	{{#rank_5}}
		<h2 class=user_rank>Тяжелый случай (нуждаются в срочной лоботомии)</h2>
		{{#rank_5}}
			{{#ru_plagiarist}}<s>{{/ru_plagiarist}}
			<p><a href='{{layout.contextPath}}/users/{{ru_id}}.html'>{{ru_name}}</a></p>
			{{#ru_plagiarist}}</s>{{/ru_plagiarist}}
		{{/loop_close}}
	{{/if_close}}
	</table>
	
	<table class=users>
	<tr>
	<td>
	{{#rank_0}}
		<h2 class=user_rank>Диагноз пока не ясен</h2>
		{{#rank_0}}
			<p><a href='{{layout.contextPath}}/users/{{ru_id}}.html'>{{ru_name}}</a></p>
		{{/loop_close}}
	{{/if_close}}
	<td>
	{{#rank_100}}
		<h2 class=user_rank>Сидят в очереди на сдачу анализов</h2>
		{{#rank_100}}
			<p><a href='{{layout.contextPath}}/users/{{ru_id}}.html'>{{ru_name}}</a></p>
		{{/loop_close}}
	{{/if_close}}
	</table>

</div>

<!-- by date -->

<div class=user_list id="date">
	<table class=user_list_by_reg_date>
		{{#users_by_reg_date}}
			<tr {{#u_group}}class=group{{/u_group}}>
				<td class=date>{{#u_show_date}}{{u_reg_date}}{{/u_show_date}}
				<td class=name>
					{{#u_plagiarist}}<s>{{/u_plagiarist}}
					<a href='{{layout.contextPath}}/users/{{u_id}}.html'>{{u_name}}</a>
					{{#u_plagiarist}}</s>{{/u_plagiarist}}
		{{/loop_close}}
	</table>
</div>

<!-- by letter -->

<div class=user_list id="letter">
	{{#user_list_by_letter_groups}}
		<h2>{{title}}</h2>
		<table class=user_list_by_letter>
			<tr>
				{{#data}}
					<td>
						{{#ul_letters}}
							<br>
							<span class=user_letter>{{ull_letter}}</span>
							<br><br>
							{{#ull_users}}
								{{#u_plagiarist}}<s>{{/u_plagiarist}}
								<a href='{{layout.contextPath}}/users/{{u_id}}.html'>{{u_name}}</a>
								{{#u_plagiarist}}</s>{{/u_plagiarist}}
								<br>
							{{/loop_close}}
						{{/loop_close}}
				{{/loop_close}}
		</table>
	{{/loop_close}}
</div>

<script type="text/javascript">
function select_block(id) {
	var blocks = ['diag', 'date', 'letter'];
	for (var i = 0; i < blocks.length; i++) {
		if (blocks[i] == id) {
			document.getElementById(blocks[i]).style.display = "block";
			document.getElementById("m_" + blocks[i]).setAttribute("class", "selected");
		}
		else {
			document.getElementById(blocks[i]).style.display = "none";
			document.getElementById("m_" + blocks[i]).setAttribute("class", "");
		}
	}
}
</script>
