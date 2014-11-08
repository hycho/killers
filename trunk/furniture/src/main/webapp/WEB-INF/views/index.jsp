<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="resourcesPath" value="${pageContext.request.contextPath}/resources"/>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>가구저작</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="${resourcesPath}/modules/furniture/css/furniture.css">
<link rel="stylesheet" href="${resourcesPath}/modules/bootstrap/css/bootstrap.css">
</head>
<body>
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a href="http://bootswatch.com/" class="navbar-brand">Bootswatch</a>
				<button class="navbar-toggle" type="button" data-toggle="collapse"	data-target="#navbar-main">
					<span class="icon-bar"></span> <span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse" id="navbar-main">
				<ul class="nav navbar-nav">
					<li><a href="#">저작</a></li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="http://bootswatch.com/cyborg/#"	id="themes">Themes 
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu" aria-labelledby="themes">
							<li><a href="http://bootswatch.com/default/">Default</a></li>
							<li class="divider"></li>
							<li><a href="http://bootswatch.com/cerulean/">Cerulean</a></li>
							<li><a href="http://bootswatch.com/cosmo/">Cosmo</a></li>
							<li><a href="./Bootswatch  Cyborg_files/Bootswatch  Cyborg.html">Cyborg</a></li>
							<li><a href="http://bootswatch.com/darkly/">Darkly</a></li>
							<li><a href="http://bootswatch.com/flatly/">Flatly</a></li>
							<li><a href="http://bootswatch.com/journal/">Journal</a></li>
							<li><a href="http://bootswatch.com/lumen/">Lumen</a></li>
							<li><a href="http://bootswatch.com/paper/">Paper</a></li>
							<li><a href="http://bootswatch.com/readable/">Readable</a></li>
							<li><a href="http://bootswatch.com/sandstone/">Sandstone</a></li>
							<li><a href="http://bootswatch.com/simplex/">Simplex</a></li>
							<li><a href="http://bootswatch.com/slate/">Slate</a></li>
							<li><a href="http://bootswatch.com/spacelab/">Spacelab</a></li>
							<li><a href="http://bootswatch.com/superhero/">Superhero</a></li>
							<li><a href="http://bootswatch.com/united/">United</a></li>
							<li><a href="http://bootswatch.com/yeti/">Yeti</a></li>
						</ul>
					</li>
					<li><a href="http://bootswatch.com/help/">Help</a></li>
					<li><a href="http://news.bootswatch.com/">Blog</a></li>
					<li class="dropdown"><a class="dropdown-toggle"	data-toggle="dropdown" href="http://bootswatch.com/cyborg/#" id="download">Download <span class="caret"></span></a>
						<ul class="dropdown-menu" aria-labelledby="download">
							<li><a href="http://bootswatch.com/cyborg/bootstrap.min.css">bootstrap.min.css</a></li>
							<li><a href="http://bootswatch.com/cyborg/bootstrap.css">bootstrap.css</a></li>
							<li class="divider"></li>
							<li><a href="http://bootswatch.com/cyborg/variables.less">variables.less</a></li>
							<li><a href="http://bootswatch.com/cyborg/bootswatch.less">bootswatch.less</a></li>
						</ul>
					</li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="http://builtwithbootstrap.com/" target="_blank">Built With Bootstrap</a></li>
					<li><a href="https://wrapbootstrap.com/?ref=bsw" target="_blank">WrapBootstrap</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container"></div>
	
	<div id="mainWrap" class="mainWrap">
		<div class="editorControls"></div>
		<!-- 고정될 몸체 차후 자동 생성이 되도록 조절해야 한다. -->
		<svg id="furEditorRoot" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" overflow="visible">
			<svg id="furEditorBackground" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" overflow="none" style="pointer-events:none">
				<rect width="100%" height="100%" x="0" y="0" stroke="#000" fill="#FFF" style="pointer-events:none"></rect>
			</svg>
			<!-- 주 Editor Event가 발생한 Canvas -->
			<svg id="furCanvas" width="100%" height="100%" x="0" y="0" xmlns="http://www.w3.org/2000/svg">
				<!--
				<g style="pointer-events:all">
					<title style="pointer-events:inherit">First Layer 1</title>
					<rect fill="#FF0000" stroke="#000000" stroke-width="5" style="pointer-events:inherit" x="165" y="131" width="114" height="110" id="svg_1" fill-opacity="1" stroke-opacity="1">
					</rect>
				</g>
				-->
			</svg> 
		</svg>
	</div>
	
	<script src="${resourcesPath}/modules/jquery/jquery-1.10.2.min.js"></script>
	<script src="${resourcesPath}/modules/bootstrap/js/bootstrap.min.js"></script>
	<script src="${resourcesPath}/modules/bootstrap/js/bootswatch.js"></script>
	<script src="${resourcesPath}/modules/snap-svg/js/snap.svg.js"></script>
	<script src="${resourcesPath}/modules/furniture/js/furniture.js"></script>
	<script src="${resourcesPath}/modules/furniture/js/furniture-util.js"></script>
	<script>
		$(function() {
			var s = Snap("#furCanvas");
			var bigCircle = s.circle(150, 150, 100);
		});
	</script>
</body>
</html>