<div class=search_menu>
	<form method=post action="/search/">
		<input type=text name=search_text value="{{search_text}}">
		<input type=submit value="Найти">
	</form>
</div>
<center>
		<h1>РЕ<span class=letter>ЗY</span>ЛЬТАТ П<span class=letter>О</span>ИСКА</h1>
</center>

{{#creo_list}}
	<table class="creo_list search_creo_list">
		<tr>

		<th class=date>Дата
		<th class=user>Пациэнт
		<th class=title>Название
	
	{{#creo_list}}
		<tr>
			<td class=date>
				{{cl_post_date}}
			<td class=user>
				{{#cl_user_id}}
					<a href='{{layout.contextPath}}/users/{{cl_user_id}}'>{{cl_alias}}</a>
				<TMPL_ELSE>
					{{cl_alias}}
				{{/if_close}}
			<td class=title>
				{{#cl_quarantine}}<s>{{/cl_quarantine}}
				<a href="{{layout.contextPath}}/creos/{{ESCAPE}}=URL NAME='cl_id'>">{{cl_title}}</a>
				{{#cl_quarantine}}</s>{{/cl_quarantine}}
				{{^cl_self_vote}}
					<span class=subnote>?</span>
				{{/unless_close}}
	{{/loop_close}}
	</table>
<TMPL_ELSE>
	<center><div class=strict>Ничего не найдено</div></center>
{{/if_close}}
