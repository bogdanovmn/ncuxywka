{{#layout}}

<h1>ДИАГНО<span class=letter>Z</span>Ы:</h1>

{{> inc/pages }}

{{#comments}}
	<div class='card {{#lc_major}}major_{{/lc_major}}{{#lc_group_name}}group_{{lc_group_type}}_{{/lc_group_name}}comment talks_comment'>
		<div class="card-header">
			<div class="row">
				<div class="col">
					{{#lc_group_name}}
						<span class=group>{{.}}</span>
					{{/lc_group_name}}
					{{#comment.user.id}}
						<a class=user href='{{layout.contextPath}}/users/{{.}}'><span class=user_name>{{comment.user.name}}</span></a>
					{{/comment.user.id}}
					{{^comment.user.id}}
						<span class=anonim>{{comment.alias}}</span>
					{{/comment.user.id}}
					<span class=array>&rarr;</span>
					{{#creo.isQuarantine}}<s>{{/creo.isQuarantine}}
						<a href="{{layout.contextPath}}/creos/{{creo.id}}">{{creo.user.name}}: {{creo.title}}</a>
					{{#creo.isQquarantine}}</s>{{/creo.isQquarantine}}
				</div>
				<div class="col">
					{{comment.created}}
				</div>
			</div>
		</div>
		<div class="card-body">
			{{#comment_phrase}}
				<span class=group>{{.}}</span><br><br>
			{{/comment_phrase}}
			{{comment.message}}
			{{#comment.isCuted}}
				<br><span class=note>--> Ампутировано <--</span>
			{{/comment.isCuted}}
		</div>
	</div>
{{/comments}}

<hr>
{{> inc/pages }}

{{/layout}}