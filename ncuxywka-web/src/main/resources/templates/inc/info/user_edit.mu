{{#user_edit_menu}}

<table class=info_red>
	<tr>
	<td class=title>Особые процедуры
	<tr>
	<td>
		{{#ms_user_ban}}
			<p class=submenu>&#149;&nbsp;
			{{#user_ban_left_time}}
				До окончания процедур осталось
				<span class=note>{{user_ban_left_time}}</span>
			{{/user_ban_left_time}}
			{{^user_ban_left_time}}
				<a href="{{layout.contextPath}}/procedure/user/{{u_id}}">Назначить процедуры</a>
				<br>
				<span class=note>Продолжительность: 6 часов</span>
			{{/user_ban_left_time}}
			</p>
		{{/ms_user_ban}}
		
		{{#god}}
			<p class=submenu>&#149;&nbsp;
				<a target=_blank href="http://ip-whois.net/ip_geo.php?ip={{u_ip}}">География</a>
			</p>
		{{/god}}
</table>

{{/user_edit_menu}}
