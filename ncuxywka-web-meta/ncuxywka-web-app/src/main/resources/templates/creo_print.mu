<center>
<TMPL_IF quarantine>
	<h1>ЛЕТ<span class=letter>А</span>ЛЬНЫЙ ИС<span class=letter>X</span>OД:</h1>
<TMPL_ELSE>
	<h1>АНАЛИ<span class=letter>Z</span>:</h1>
</TMPL_IF>
<p>
<a href='/users/{{c_user_id}}.html'><span class=creo_author>{{c_alias}}</span></a>, {{c_post_date}}
<br><br><span class=creo_title>{{c_title}}</span>
<br><br>
</p>
</center>

<TMPL_IF deleted>
	<p class='deleted_msg'>Уборщица шваброй махнула и случайно удалила этот анализ...</p>
<TMPL_ELSE>
	<div class=creo_body>{{ESCAPE}}="NONE" NAME=c_body></div>
</TMPL_IF>
