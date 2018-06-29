{{#user_black_copy_creo_list}}

<table class=info>
	<tr>
	<td class=title>Черновик
	<tr>
	<td>
	<TMPL_LOOP user_black_copy_creo_list>
		<p class=user_creo_list>
			<a href="/black_copy/preview/{{bccl_id}}.html">
				{{bccl_title}}
			</a>
		</p>
	{{/loop_close}}
	
</table>

{{/if_close}}
