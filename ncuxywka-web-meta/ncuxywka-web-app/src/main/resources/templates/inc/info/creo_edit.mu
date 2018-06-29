{{#creo_edit_menu}}

<table class=info_red>
	<tr>
	<td class=title>Особые процедуры
	<tr>
	<td>
		{{#ms_neofuturism}}
			{{#neofuturism}}
				<p class=submenu>&#149;&nbsp;
					<a href='/creo_edit/from_neofuturism/{{creo_id}}/'>Исключить из неофутуризма</a>
				</p>
			<TMPL_ELSE>
				<p class=submenu>&#149;&nbsp;
					<a href='/creo_edit/to_neofuturism/{{creo_id}}/'>Это неофутуризм!</a>
				</p>
			</TMPL_IF>
		</TMPL_IF>

		{{#ms_quarantine}}
			{{#quarantine}}
				<p class=submenu>&#149;&nbsp;
					<a href='/creo_edit/from_quarantine/{{creo_id}}/'>Реанимация...</a>
				</p>
			<TMPL_ELSE>
				<p class=submenu>&#149;&nbsp;
					<a href='/creo_edit/to_quarantine/{{creo_id}}/'>В карантин!</a>
				</p>
			</TMPL_IF>
		</TMPL_IF>
		
		<TMPL_UNLESS deleted>
			{{#ms_creo_edit}}
				<p class=submenu>&#149;&nbsp;
					<a href='/creo_edit/full/{{creo_id}}/'>Исправить анализ</a>
				</p>
			</TMPL_IF>
		</TMPL_UNLESS>

		<TMPL_UNLESS deleted>
			{{#ms_creo_delete}}
				<p class=submenu>&#149;&nbsp;
					<a href='/creo_edit/delete/{{creo_id}}/'>Удалить!</a>
				</p>
			</TMPL_IF>
		</TMPL_UNLESS>

		{{#ms_plagiarism}}
			{{#plagiarist}}
				<p class=submenu>&#149;&nbsp;
					<a href='/creo_edit/from_plagiarism/{{creo_id}}/'>Реалибитировать (не плагиат)</a>
				</p>
			<TMPL_ELSE>
				<p class=submenu>&#149;&nbsp;
					<a href='/creo_edit/to_plagiarism/{{creo_id}}/'>Плагиат!!</a>
				</p>
			</TMPL_IF>
		</TMPL_IF>
</table>

</TMPL_IF>
