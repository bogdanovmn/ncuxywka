<form id=post_form name=post_form method=post action='{{layout.contextPath}}/comments'>
	<table class=form>
		<tr>
			<td><span class=note>Пациэнт:</span>
			<td>
			{{#user.id}}
				<span class=user_name>{{this.user.name}}</span>
			{{/user.id}}
			{{^user.id}}
				<input type=text maxlength=50 name=alias value='{{alias}}'>
			{{/user.id}}
		<tr>
			<td><span class=note>Диагноз:</span>
			<td>
			<textarea id=post_text rows=10 cols=60 name=msg></textarea>
		<tr>
			<td>&nbsp;
			<td>
			<input type=submit value='{{postButtonCaption}}'>
	</table>
	<input type=hidden name=creo_id value='{{creo.id}}'>
	<input type=hidden name=room_id value='{{room.id}}'>
</form>
