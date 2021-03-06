{{#black_copy_edit}}
	<h1>ЧЕРН<span class=letter>О</span>ВИ<span class=letter>К</span></h1>

	{{> inc/error_msg }}

	<form onsubmit="return check_post_data();" name='update_black_copy' method=post action='/black_copy/'>
		<table class=form>
			<tr>
				<td><span class=note>Название:</span>
				<td>
				<input id=creo_title size=75 maxlength=250 type=text name=title value='{{c_title}}'>
			<tr>
				<td><span class=note>Анализы:</span>
				<td>
				<textarea id=creo_body name=body value='' cols=75 rows=25>{{c_body}}</textarea>
			<tr>
				<td>&nbsp;
				<td>
					<input type=submit name='update' value='Сохранить изменения'>
		</table>
		<input type=hidden name=action value='add'>
		<input type=hidden name=id value='{{creo_id}}'>
	</form>
<TMPL_ELSE>
	{{^can_public}}
		<div class=strict>Ваши предыдущие анализы показали нам что Вы достаточно здоровы!<br>Мы советуем Вам сдать следующий анализ<br>не ранее чем через {{time_to_public}}</div> 
		<p>&nbsp;
	{{/unless_close}}
	<table class=black_copy_menu>
		<tr>
		<td class=public>
			<form method=post onsubmit="return check_public_data();" action='/black_copy/publish'>
				{{#can_public}}
					<input type=submit value="Сдать этот анализ">
				{{/if_close}}
				<input type=hidden name="id" value="{{creo_id}}">
				<input type=hidden name="action" value="public">
				{{#can_public}}
					<br>
					<input id=faq_read type=checkbox name='faq'> C <a href='{{layout.contextPath}}/faq_room/'>FAQ'ом</a> ознакомлен и согласен!
				{{/if_close}}
			</form>
		<td class=edit>
			<a href="{{layout.contextPath}}/black_copy/edit/{{creo_id}}">
				<input type=button value="Внести правки">
			</a>
	</table>
	<h1>ЧЕРН<span class=letter>О</span>ВИ<span class=letter>К</span></h1>
	<span class=creo_title>{{c_title}}</span>
	<br><br>
	<div class=creo_body>{{ESCAPE}}="NONE" NAME=c_body></div>
{{/if_close}}

<SCRIPT language='javascript' type="text/javascript">
<!--
function check_post_data() {
    if (document.getElementById('creo_title').value == '' || document.getElementById('creo_body').value == '') {
        alert('Название анализа и текст анализа должны быть заполнены!');
		return false;
    }
    return true;
}
function check_public_data() {
	if (!document.getElementById('faq_read').checked) {
        alert('Настоятельно рекомендуем вам прочесть FAQ!');
		return false;
    }
    return true;
}
-->
</SCRIPT>
