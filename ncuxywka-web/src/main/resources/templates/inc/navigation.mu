{{#menu.items}}
	<div class="card">
		{{#subMenu}}
			<div class="card-header">{{title}}</div>
			<div id={{id}} class="card-body">
				{{#items}}
					<p>
						<a href="{{layout.contextPath}}{{url}}">{{title}}</a>
						{{#note}}
							<span class=note>({{note}})</span>
						{{/note}}
					</p>
				{{/items}}
			</div>
		{{/subMenu}}
	</div>
{{/menu.items}}

{{^isGuest}}
	<script>
		$(document).ready(function() {
			let userDiv = $("#USER ");
			userDiv.html(
				"<p>Хайц, <a href={{layout.contextPath}}/users/{{currentUser.id}}>{{currentUser.name}}</a></p>" +
				userDiv.html()
			);
		});
	</script>
{{/isGuest}}