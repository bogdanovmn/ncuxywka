<h1>КОР<span class=letter>Р</span>ЕКЦИ<span class=letter>Я</span></h1>
<form onsubmit="return check_post_data();" name='edit_save' method=post action='/creo_edit/full/'>
	<table class=form>
		<tr>
			<td><span class=note>Название:</span>
			<td>
			<input id=creo_title size=75 maxlength=250 type=text name=title value='{{c_title}}>'>
		<tr>
			<td><span class=note>Анализы:</span>
			<td>
			<textarea id=creo_body name=body value='' cols=75 rows=25>{{c_body}}></textarea>
		<tr>
			<td>&nbsp;
			<td>
				<input type=submit name='update' value='Сохранить изменения'>
	</table>
	<input type=hidden name=action value='edit_save'>
	<input type=hidden name=id value='{{c_id}}>'>
</form>

<SCRIPT language='javascript' type="text/javascript">
<!--
function check_post_data() {
    if (document.getElementById('creo_title').value == '' || document.getElementById('creo_body').value == '') {
        alert('Название анализа и текст анализа должны быть заполнены!');
		return false;
    }
    return true;
}
-->
</SCRIPT>
