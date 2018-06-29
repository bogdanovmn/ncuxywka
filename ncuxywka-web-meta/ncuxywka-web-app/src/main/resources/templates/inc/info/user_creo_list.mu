{{#user_creo_list}}

<table class=info>
	<tr>
	<td class=title>Анализы пациэнта
	<tr>
	<td>
	{{#avatar}}
		<center><p><img alt='{{cl_alias}}' src='/{{avatar}}_thumb'></center>
	{{/if_close}}
	<tr>
	<td>
	<TMPL_LOOP user_creo_list>
		<p class=user_creo_list>
		{{#cl_selected}}
			{{#cl_quarantine}}<s>{{/cl_quarantine}}
			&#149;&nbsp;{{cl_title}}
			{{#cl_quarantine}}</s>{{/cl_quarantine}}
		<TMPL_ELSE>
			<a title="Диагнозов: {{cl_comments_count}}" href="/creos/{{cl_id}}.html">
				{{#cl_quarantine}}<s>{{/cl_quarantine}}
				{{cl_title}}{{#cl_quarantine}}</s>{{/cl_quarantine}}</a>
		{{/if_close}}
		<TMPL_UNLESS cl_self_vote>
			<span class=subnote>?</span>
		{{/unless_close}}
		</p>
	{{/loop_close}}

	{{#user_creo_list_more}}
		<div class=more_creos>
					<a href="/users/{{c_user_id}}.html#creos">... читать ещё {{user_creo_list_more}} ...</a>
		</div>
	{{/if_close}}
	
</table>

{{/if_close}}
