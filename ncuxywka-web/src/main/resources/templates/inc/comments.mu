{{#comments.0}}
	{{> inc/pages }}

	{{#comments}}
		<div class="card {{#user.isMajor}}major_{{/user.isMajor}}{{#user.groupName}}group_{{user.groupType}}_{{/user.groupName}}comment"
			 data-comment-id="{{id}}"
			 data-inner-id="{{innerId}}"
		>
			<div class="card-header">
				<div class="row">
					<div class="col-8 who">
						{{#user.groupName}}
							<span class=group>{{.}}</span>
						{{/user.groupName}}
						{{#user}}
							<a class=user href='{{layout.contextPath}}/users/{{id}}'><span class=user_name>{{name}}</span></a>
						{{/user}}
						{{^user}}
							<span class=anonymous>{{authorName}}</span>
						{{/user}}
					</div>
					<div class="col-4 stamp">
						<a href='#' onclick="reply_to('{{authorName}}', {{id}})">Ответить</a>
						&nbsp;&nbsp;&nbsp;
						<i>{{innerId}}</i>
						&nbsp;
						<span class=post_date>{{created}}</span>
					</div>
				</div>
			</div>
			<div class="card-body">
				{{#isForCreo}}
					{{#user.commentPhrase}}
						<span class=group>{{user.commentPhrase}}</span><br><br>
					{{/user.commentPhrase}}
				{{/isForCreo}}
				{{message}}
			</div>
		</div>
	{{/comments}}

	{{> inc/pages }}

{{/comments.0}}

<script>
	$(document).ready(function() {
		// let i = 1;
		// $("[data-comment-id]").each(function (){
		// 	$(this).attr("data-inner-id", i);
		// 	$(this).find("div.stamp i").text(i);
		// 	i++;
		// })
	})
	function reply_to(userTo, commentId) {
		const inner_id = $(`[data-comment-id=${commentId}]`).attr("data-inner-id");
		const insert_text = `--> ${userTo} ${inner_id} \n`;
		if(!document.post_form.post_text.value) {
			document.post_form.post_text.value = insert_text;
		}
		else {
			document.post_form.post_text.value = document.post_form.post_text.value + '\n' + insert_text;
		}
		setTimeout("document.getElementById('post_text').focus()", 1);
	}
</script>
