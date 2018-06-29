<form id=post_form name=post_form method=post action=''>
	<table class=form>
		<tr>
			<td><span class=note>Пациэнт:</span>
			<td>
			<TMPL_IF user_auth>
				<span class=user_name>{{alias}}</span>
				<input type=hidden name=alias value='{{alias}}'>
			<TMPL_ELSE>
				<input type=text maxlength=50 name=alias value='{{alias}}'>
			</TMPL_IF>
		<tr>
			<td><span class=note>Диагноз:</span>
			<td>
			<textarea id=post_text rows=10 cols=60 name=msg></textarea>
		<tr>
			<td>&nbsp;
			<td>
			<input type=submit id=submit_add name=add value='{{#post_button_caption}}{{post_button_caption}}<TMPL_ELSE>Поставить диагноз{{/post_button_caption}}'>
	</table>
	<TMPL_IF creo_id>
		<input type=hidden name=id value='{{creo_id}}'>
	</TMPL_IF>
	<TMPL_IF room_name>
		<input type=hidden name=room value='{{room_name}}'>
	</TMPL_IF>
	<input type=hidden id=action name=action value='add'>
</form>
