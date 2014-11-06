<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="resourcesPath" value="${pageContext.request.contextPath}/resources"/>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Bootswatch: Cyborg</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://bootswatch.com/cyborg/bootstrap.css" media="screen">
<link rel="stylesheet" href="http://bootswatch.com/assets/css/bootswatch.min.css">
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
	
	<script src="${resourcesPath}/modules/jquery/jquery-1.10.2.min.js"></script>
	<script src="${resourcesPath}/modules/bootstrap/js/bootstrap.min.js"></script>
	<script src="${resourcesPath}/modules/bootstrap/js/bootswatch.js"></script>
</body>
</html>