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
			<TMPL_LOOP users_1>
				<option value="{{user_id}}" <TMPL_IF selected>selected</TMPL_IF>>
					{{user_name}}
				</option>
			</TMPL_LOOP>
		</select>
	<td>
		Степень шизофрении
		<br>
		<select name=depth>
			<TMPL_LOOP depth>
				<option value="{{value}}" <TMPL_IF selected>selected</TMPL_IF>>
					{{name}}
				</option>
			</TMPL_LOOP>
		</select>
	<tr>
	<td>
		<input type=submit value='Испытать лекарство'>
	</table>
</form>

<h1>Вот что получилось</h1>

<div class=creo_body>{{ESCAPE}}=NONE text></div>
