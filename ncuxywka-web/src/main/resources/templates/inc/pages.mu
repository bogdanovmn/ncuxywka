{{#paginationBar.isMoreThanOnePage}}
	<div class="container">
		<span class=note>Страницы:</span>
		{{#paginationBar.hasPreviousPage}}
			<a href='{{layout.contextPath}}{{paginationBar.baseUrl}}page={{paginationBar.previousPage}}'>< сюда</a> |
		{{/paginationBar.hasPreviousPage}}

		{{#paginationBar.isFirstPageLinkVisible}}
			<a href='{{layout.contextPath}}{{paginationBar.baseUrl}}page=1'>1</a> ...
		{{/paginationBar.isFirstPageLinkVisible}}

		{{paginationBar.currentPage}}

		{{#paginationBar.isLastPageLinkVisible}}
			... <a href='{{layout.contextPath}}{{paginationBar.baseUrl}}page={{paginationBar.totalPages}}'>{{paginationBar.totalPages}}</a>
		{{/paginationBar.isLastPageLinkVisible}}

		{{#paginationBar.hasNextPage}}
			| <a href='{{layout.contextPath}}{{paginationBar.baseUrl}}page={{paginationBar.nextPage}}'>туда ></a>
		{{/paginationBar.hasNextPage}}
	</div>
{{/paginationBar.isMoreThanOnePage}}
