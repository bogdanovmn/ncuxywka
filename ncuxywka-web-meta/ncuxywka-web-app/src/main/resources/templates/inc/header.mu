<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>{{meta_title}} DEFAULT='ПСИХУЮШКА'></title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name='description' content="{{meta_description}} DEFAULT='Литературный портал: свободная публикация рассказов и стихов о любых сторонах нашего бытия и сознания.'>"> 
	<link rel="stylesheet" href="/css/{{skin_css_main}}" type="text/css">
	<link rel="icon" type="image/png" href="/img/favicon.ico">

	{{#skin_js_include}}
		<script type="text/javascript" src="/js/{{js_file}}">
	{{/loop_close}}

	<script type="text/javascript">
	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-23323833-1']);
	  _gaq.push(['_setDomainName', '.ncuxywka.com']);
	  _gaq.push(['_setAllowHash', 'false']);
	  _gaq.push(['_trackPageview']);

	  (function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();
	</script>

	
	{{#creo_view}}
		<!-- VK -->
		<script type="text/javascript" src="//vk.com/js/api/openapi.js?96"></script>
		<script type="text/javascript">
		  VK.init({apiId: 3699507, onlyWidgets: true});
		</script>
	{{/if_close}}

	{{#jquery_required}}
  		<script language="javascript" type="text/javascript" src="/js/flot/jquery.min.js"></script>
	{{/if_close}}

	{{#jquery_flot_required}}
	  <!--[if IE]><script language="javascript" type="text/javascript" src="/js/flot/excanvas.min.js"></script><![endif]-->
	  <script language="javascript" type="text/javascript" src="/js/flot/jquery.flot.min.js"></script>
	  <script language="javascript" type="text/javascript" src="/js/flot/jquery.flot.time.js"></script>
	{{/if_close}}	
</head>

<body onload="new SnowFall().run()">

<!--LiveInternet counter-->
<script type="text/javascript">
<!--
new Image().src = "//counter.yadro.ru/hit?r" + escape(document.referrer) + ((typeof(screen) == "undefined") ? "" : ";s"+screen.width + "*" + screen.height + "*" + (screen.colorDepth ? screen.colorDepth : screen.pixelDepth)) + ";u" + escape(document.URL) + ";" + Math.random();
//-->
</script>
<!--/LiveInternet-->

<table class=main>
