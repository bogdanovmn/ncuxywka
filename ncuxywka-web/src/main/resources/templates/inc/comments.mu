{{#isMultiPage}}
	{{> pages }}
{{/isMultiPage}}

{{#comments.0}}
	{{#comments}}
		<div class="card {{#user.isMajor}}major_{{/user.isMajor}}{{#user.groupName}}group_{{user.groupType}}_{{/user.groupName}}comment">
			<div class="card-header">
				<div class="row">
					<div class="col-8 who">
						{{#user.groupName}}
							<span class=group>{{user.groupName}}</span>
						{{/user.groupName}}
						{{#user.id}}
							<a class=user href='{{layout.contextPath}}/users/{{user.id}}'><span class=user_name>{{this.user.name}}</span></a>
						{{/user.id}}
						{{^user.id}}
							<span class=anonymous>{{this.user.name}}</span>
						{{/user.id}}
					</div>
					<div class="col-4 stamp">
						<a href='#' onclick="reply_to('{{this.user.name}} {{innerId}}')">Ответить</a>
						&nbsp;&nbsp;&nbsp;
						<i>{{innerId}}</i>
						&nbsp;
						<span class=post_date>{{comment.created}}</span>
					</div>
				</div>
			</div>
			<div class="card-body">
				{{#isForCreo}}
					{{#user.commentPhrase}}
						<span class=group>{{user.commentPhrase}}</span><br><br>
					{{/user.commentPhrase}}
				{{/isForCreo}}
				{{{comment.message}}}
			</div>
		</div>
	{{/comments}}

	{{#isMultiPage}}
		<hr>
		{{> pages }}
	{{/isMultiPage}}

{{/comments.0}}

<script>
	function reply_to(text) {
		const insert_text = `--> ${text} \n`;
		if(!document.post_form.post_text.value) {
			document.post_form.post_text.value = insert_text;
		}
		else {
			document.post_form.post_text.value = document.post_form.post_text.value + '\n' + insert_text;
		}
		setTimeout("document.getElementById('post_text').focus()", 1);
	}
</script>
