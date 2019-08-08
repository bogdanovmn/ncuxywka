<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>Психуюшка</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--<link rel="stylesheet" href="{{layout.contextPath}}/css/auto_main.css" type="text/css">-->
    <link rel="icon" type="image/png" href="{{layout.contextPath}}/img/icon.png" />

    <script language="javascript" type="text/javascript" src="{{layout.contextPath}}/webjars/jquery/jquery.min.js"></script>
    <script language="javascript" type="text/javascript" src="{{layout.contextPath}}/webjars/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="{{layout.contextPath}}/webjars/bootstrap/css/bootstrap.min.css" type="text/css">
</head>

<body>
<div class="container-fluid small">
	{{> inc/top}}
	<div class="row flex-nowrap">
		<div class="col-2">
			{{> inc/navigation}}
		</div>
		<div class="col-7">
			{{{layout.body}}}
		</div>
		<div class="col-3">
			{{> inc/info_blocks}}
		</div>
	</div>
	{{> inc/footer}}
</div>
</body>
</html>