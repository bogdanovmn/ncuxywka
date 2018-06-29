<TMPL_IF ms_profiler>

<table class="info_gray">
	<tr>
	<td class=title>Профайлер
	<tr>
	<td>
		<p>
			DB connections:
			<b>{{profiler_db_connections}}></b>
		</p>
		<TMPL_IF profiler_db_connect_time>
			<p>
				DB connect time:
				<b>{{profiler_db_connect_time}}></b>
			</p>
		</TMPL_IF>
		<p>
			Время SQL:
			<b>{{profiler_sql_time}}></b> (<a href='/doctor/sql_details/'>{{profiler_sql_count}}> q</a>)
		</p>
		<p>
			Время Memcached:
			<b>{{profiler_cache_total_time}}></b> 
			({{profiler_cache_from_cache}}>/{{profiler_cache_get_count}}>)
		</p>
		<p>
			Общее время: 
			<b>{{profiler_gen_time}}></b>
		</p>

</table>

</TMPL_IF>
