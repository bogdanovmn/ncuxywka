<center>
	<div class=header>ЛАБ<span class=letter>О</span>РОТОРИ<span class=letter>Я</span></div>
</center>

<form method=post>
	<table class=form>
	<tr>
	<td>
		Пациэнт
		<br>
		<select name=user_id_1>
			{{#users_1}}
				<option value="{{user_id}}" {{#selected}}selected{{/selected}}>
					{{user_name}}
				</option>
			{{/loop_close}}
		</select>
	<td>
		Степень шизофрении
		<br>
		<select name=depth>
			{{#depth}}
				<option value="{{value}}" {{#selected}}selected{{/selected}}>
					{{name}}
				</option>
			{{/loop_close}}
		</select>
	<tr>
	<td>
		<input type=submit value='Испытать лекарство'>
	</table>
</form>

<h1>Вот что получилось</h1>

<div class=creo_body>{{ESCAPE}}=NONE text></div>
