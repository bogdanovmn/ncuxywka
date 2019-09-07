<h1>ДИАГНО<span class=letter>Z</span>Ы:</h1>

{{#multi_page}}
	{{> inc/pages }}
{{/if_close}}

{{#last_comments}}
	<table class='{{#lc_major}}major_{{/lc_major}}{{#lc_group_name}}group_{{lc_group_type}}_{{/lc_group_name}}comment talks_comment'>
		<tr>
			<td class=who>
				{{#lc_group_name}}
					<span class=group>{{lc_group_name}}</span>
				{{/if_close}}
				{{#lc_user_id}}
					<a class=user href='{{layout.contextPath}}/users/{{lc_user_id}}'><span class=user_name>{{lc_user_name}}</span></a>
				<TMPL_ELSE>
					<span class=anonim>{{lc_alias}}</span> 
				{{/if_close}}
				<span class=array>&rarr;</span> {{#lc_quarantine}}<s>{{/lc_quarantine}}<a href="{{layout.contextPath}}/creos/{{ESCAPE}}=URL NAME=lc_creo_id>">{{lc_creo_alias}}: {{lc_creo_title}}{{#lc_quarantine}}</s>{{/lc_quarantine}}
				</a>
			<td class="stamp">
				<span class=post_date><TMPL_VAR	NAME=lc_post_date></span>
		<tr>
			<td class=msg colspan=3>
				{{#lc_comment_phrase}}
					<span class=group>{{lc_comment_phrase}}</span><br><br>
				{{/if_close}}
				{{ESCAPE}}="NONE" NAME=lc_msg>
				{{#lc_cuted}}
					<br><span class=note>--> Ампутировано <--</span>
				{{/if_close}}
	</table>
{{/loop_close}}

{{#multi_page}}
	<hr>
	{{> inc/pages }}
{{/if_close}}
