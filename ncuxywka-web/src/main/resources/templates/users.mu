{{#layout}}

<h1>ПАЦИЭНТ<span class=letter>Ы</span></h1>

<table class=user_edit_menu>
<tr>
	<td id="m_diag" class=selected onclick="select_block('diag');">По диагнозу
	<td id="m_date" onclick="select_block('date');">По дате поступления
	<td id="m_letter" onclick="select_block('letter');">По алфавиту
</table>

<div class="user_list_open" id="diag">
	{{#users.byRank}}
		<div class="card">
			<div class="card-header">{{groupName}}</div>
			<div class="card-body">
				{{#users}}
					{{#muted}}<s>{{/muted}}
					<p><a href='{{layout.contextPath}}/users/{{info.id}}'>{{info.name}}</a></p>
					{{#muted}}</s>{{/muted}}
				{{/users}}
			</div>
		</div>
	{{/users.byRank}}
</div>

<!-- by date -->

<div class=user_list id="date">
	{{#users.byCreationDate}}
		<h2>{{groupName}}</h2>
		<table class=user_list_by_reg_date>
			{{#users}}
				<tr {{#isSameDate}}class=group{{/isSameDate}}>
					<td class=date>
						{{#isFirstInSameDate}}{{date}}{{/isFirstInSameDate}}
					</td>
					<td class=name>
						{{#muted}}<s>{{/muted}}
						<a href='{{layout.contextPath}}/users/{{id}}'>{{name}}</a>
						{{#muted}}</s>{{/muted}}
					</td>
				</tr>
			{{/users}}
		</table>
	{{/users.byCreationDate}}
</div>

<!-- by letter -->

<div class=user_list id="letter">
	{{#users.byAlphabet}}
		<div class="card">
			<div class="card-header">{{groupName}}</div>
			<div class="card-body">
				{{#users}}
					{{#muted}}<s>{{/muted}}
					<a href='{{layout.contextPath}}/users/{{info.id}}'>{{info.name}}</a>
					{{#muted}}</s>{{/muted}}
					<br>
				{{/users}}
			</div>
		</div>
	{{/users.byAlphabet}}
</div>

<script type="text/javascript">
function select_block(id) {
	const blocks = ['diag', 'date', 'letter'];
	for (let i = 0; i < blocks.length; i++) {
		if (blocks[i] === id) {
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

{{/layout}}

