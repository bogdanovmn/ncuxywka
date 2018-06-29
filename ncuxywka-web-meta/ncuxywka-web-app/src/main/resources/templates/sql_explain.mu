<TMPL_INCLUDE NAME="top.tpl">

<td class=content>
	<div class=error>
	<center><p class=error_title>{{msg}}</p></center>
	<TMPL_LOOP explains>
		<p>Caller: <b>{{caller}}</b>
		<br>Предполагается обработать ~<b>{{nice_total_rows}}</b> строк
		</p>
		<table class=sql_explain>
			<tr>
			<td class=short>id
			<td>select_type
			<td>table
			<td>type
			<td>possible_keys
			<td>key
			<td class=short>key len
			<td>ref
			<td  class=rows>rows
			<td>Extra
		<TMPL_LOOP details>
			<tr>
			<td>{{id}}
			<td>{{select_type}}
			<td>{{table}}
			<td>{{type}}
			<td>{{possible_keys}}
			<td>{{key}}
			<td>{{key_len}}
			<td>{{ref}}
			<td>{{rows}}
			<td>{{Extra}}
		{{/loop_close}}
		</table>
		<br>
		<br>
	{{/loop_close}}
	</div>

<!-- Bottom -->
<TMPL_INCLUDE NAME="bottom.tpl">
