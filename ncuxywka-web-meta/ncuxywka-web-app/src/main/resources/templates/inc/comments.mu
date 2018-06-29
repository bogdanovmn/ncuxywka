<TMPL_IF multi_page>
	<TMPL_INCLUDE NAME="pages.tpl">
</TMPL_IF>

<TMPL_IF comments>
<TMPL_LOOP comments>
	<table class={{#cm_major}}major_{{/cm_major}}{{#cm_group_name}}group_{{cm_group_type}}_{{/cm_group_name}}comment>
		<tr>
			<td class=who>
				<TMPL_IF cm_group_name>
						<span class=group>{{cm_group_name}}</span>
					</TMPL_IF>
				<TMPL_IF cm_user_id>
					<a class=user href='/users/{{cm_user_id}}.html'><span class=user_name>{{cm_user_name}}</span></a>
				<TMPL_ELSE>
					<span class=anonim>{{cm_alias}}</span>
				</TMPL_IF>
			<td class=stamp>
				{{#cm_reply}}<a href='#' onclick="reply_to('{{ESCAPE}}=JS NAME=cm_alias> {{ESCAPE}}=JS NAME=cm_inner_id>')">Ответить</a>&nbsp;&nbsp;&nbsp;{{/cm_reply}}<i>{{cm_inner_id}}</i>
				&nbsp;	
				<span class=post_date>{{cm_post_date}}</span>
		<tr>
			<td class=msg colspan=3>
				<TMPL_IF cm_for_creo>
					<TMPL_IF cm_comment_phrase>
						<span class=group>{{cm_comment_phrase}}</span><br><br>
					</TMPL_IF>
				</TMPL_IF>
				{{ESCAPE}}="NONE" NAME=cm_msg>
	</table>
</TMPL_LOOP>

<TMPL_IF multi_page>
	<hr>
	<TMPL_INCLUDE NAME="pages.tpl">
</TMPL_IF>

</TMPL_IF>

<SCRIPT language='javascript' type="text/javascript">
<!--
function reply_to(text) {
    var insert_text = '--> ' + text + '\n';
    if(!document.post_form.post_text.value) {
        document.post_form.post_text.value = insert_text;
    }
    else {
        document.post_form.post_text.value = document.post_form.post_text.value + '\n' + insert_text;
    }
    setTimeout("document.getElementById('post_text').focus()", 1);
}
-->
</SCRIPT>
