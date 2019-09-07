{{#layout}}

<div class="row">
	<div class="col-4">
		<div class="card">
			<div class="card-header">КУДА Я ПОПАЛ?</div>
			<div class="card-body">
				<b>Психуюшка</b> - это литературное онлайн сообщество, полная свобода слова и отсутствие цензуры. <a href='{{layout.contextPath}}/faq/'>Подробнее...</a>
			</div>
		</div>

		<div class="card">
			<div class="card-header">ЗАЧЕМ?</div>
			<div class="card-body">
				<p><a href='{{layout.contextPath}}/creos/'>Почитать анализы</a></p>
				<p><a href='{{layout.contextPath}}/diagnoses/'>Поставить диагнозы</a></p>
				<p><a href='{{layout.contextPath}}/add_creo/'>Прислать свои анализы</a></p>
			</div>
		</div>

		<div class="card">
			<div class="card-header">Новички</div>
			<div class="card-body">
				{{#newUsers}}
					<p>
					<a href="{{layout.contextPath}}/users/{{id}}">{{name}}</a>
					<br>
					<span class=note>{{created}}</span>
					</p>
				{{/newUsers}}
			</div>
		</div>
	</div>
	<div class="col-8">
		<div class="card-img-overlay">
			<img class="img-fluid" alt='ПСИХУЮШКА.COM' src='{{layout.contextPath}}/img/{{skin.img.main}}'>
		</div>
	</div>
</div>

<div class="card">
	<div class="card-header">Пси-Новости</div>
	<div class="card-body">
		{{#news}}
			<p>
				<b>{{created}}</b>
				от <a class=author href="{{layout.contextPath}}/users/{{user.id}}">{{this.user.name}}</a>
				<br>
				{{text}}
			</p>
		{{/news}}
		<div class=more>
			<a href="{{layout.contextPath}}/news/">Архив новостей</a>
		</div>
	</div>
</div>

<div class="card">
	<div class="card-header">Последние <a href='{{layout.contextPath}}/creos/'>анализы</a>:</div>
	<div class="card-body">
		{{#lastCreos.previews}}
			<div class="card">
				<div class="card-header">
					<a href="{{layout.contextPath}}/creos/{{id}}">
						<b>{{author}}</b> : {{title}}
					</a>
					<b>{{creo.created}}</b>
					Диагнозов: {{creoView.statistic.comments}}
				</div>
				<div class="card-body body">
					<div class="row">
						<div class="col">
							{{#avatar}}
								<img alt='{{authorName}}' src='/{{avatar}}_thumb'>
							{{/avatar}}
							{{^avatar}}
								&nbsp;
							{{/avatar}}
						</div>
						<div class="col">
							<pre>{{text}}</pre>
							{{#truncated}}
								<br><span class=note>--> Ампутировано <--</span>
							{{/truncated}}
						</div>
					</div>
				</div>
				{{#previousCreos.0}}
					<div class="card-footer">
						{{#previousCreos}}
							<i>{{creo.created}}</i>
							<a href="{{layout.contextPath}}/creos/{{creo.id}}">
								{{creo.title}}
							</a>
							<i>&nbsp;({{statistic.comments}} диаг.)</i>
							<br>
						{{/previousCreos}}
					</div>
				{{/previousCreos.0}}
			</div>
		{{/lastCreos.previews}}
	</div>
</div>
{{/layout}}
