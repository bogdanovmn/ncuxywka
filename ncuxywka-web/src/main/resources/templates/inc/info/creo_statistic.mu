{{#creo_statistic}}

<table class="info creo_statistic">
	<tr>
	<td class=title>Статистика
	<tr>
	<td>
		<p>
			Кол-во просмотров: 
			<br>
			<span class=value>{{views_total}}</span>
		</p>
		{{#selections_total}}
			<p title="{{#selections_info}}{{si_user_name}}&#10;&#13;{{/loop_close}}">
				Добавили в избранное:
				<br>
				<span class=value>{{selections_total}}</span>
			</p>
		{{/if_close}}
</table>

{{/if_close}}
