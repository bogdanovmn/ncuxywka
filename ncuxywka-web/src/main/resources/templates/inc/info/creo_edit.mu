{{#creo_edit_menu}}

<table class=info_red>
	<tr>
	<td class=title>Особые процедуры
	<tr>
	<td>
		{{#ms_neofuturism}}
			{{#neofuturism}}
				<p class=submenu>&#149;&nbsp;
					<a href='{{layout.contextPath}}/creo_edit/from_neofuturism/{{creo_id}}/'>Исключить из неофутуризма</a>
				</p>
			{{/neofuturism}}
			{{^neofuturism}}
				<p class=submenu>&#149;&nbsp;
					<a href='{{layout.contextPath}}/creo_edit/to_neofuturism/{{creo_id}}/'>Это неофутуризм!</a>
				</p>
			{{/neofuturism}}
		{{/ms_neofuturism}}

		{{#ms_quarantine}}
			{{#quarantine}}
				<p class=submenu>&#149;&nbsp;
					<a href='{{layout.contextPath}}/creo_edit/from_quarantine/{{creo_id}}/'>Реанимация...</a>
				</p>
			{{/quarantine}}
			{{^quarantine}}
				<p class=submenu>&#149;&nbsp;
					<a href='{{layout.contextPath}}/creo_edit/to_quarantine/{{creo_id}}/'>В карантин!</a>
				</p>
			{{/quarantine}}
		{{/ms_quarantine}}
		
		{{^deleted}}
			{{#ms_creo_edit}}
				<p class=submenu>&#149;&nbsp;
					<a href='{{layout.contextPath}}/creo_edit/full/{{creo_id}}/'>Исправить анализ</a>
				</p>
			{{/ms_creo_edit}}
		{{/deleted}}

		{{^deleted}}
			{{#ms_creo_delete}}
				<p class=submenu>&#149;&nbsp;
					<a href='{{layout.contextPath}}/creo_edit/delete/{{creo_id}}/'>Удалить!</a>
				</p>
			{{/ms_creo_delete}}
		{{/deleted}}

		{{#ms_plagiarism}}
			{{#plagiarist}}
				<p class=submenu>&#149;&nbsp;
					<a href='{{layout.contextPath}}/creo_edit/from_plagiarism/{{creo_id}}/'>Реалибитировать (не плагиат)</a>
				</p>
			{{/plagiarist}}
			{{^plagiarist}}
				<p class=submenu>&#149;&nbsp;
					<a href='{{layout.contextPath}}/creo_edit/to_plagiarism/{{creo_id}}/'>Плагиат!!</a>
				</p>
			{{/plagiarist}}
		{{/ms_plagiarism}}
</table>

{{/creo_edit_menu}}
