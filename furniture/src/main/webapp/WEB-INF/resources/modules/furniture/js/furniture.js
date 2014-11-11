/**
 * Package : funiture-script
 * Licensed under the MIT License
 * Copyright(c) 2010 Ho Young Cho
 * add on dependency snap.svg (http://snapsvg.io/)
 */

var fntEditor = function(){
	var $canvas;
	var config = {
		
	};
	
	var initialize = function($targetElem){
		console.log("Initialize fntEditor.");
		$canvas = $targetElem
		initEvent();
	};
	
	var initEvent = function(){
		$canvas.mousedown(mouseDown);
	};
	
	var mouseDown = function(evt){
		// Type에 따른 기능이 추가 되어야 한다.
		selection(evt.target);
	};
	
	var selection = function(elem){
		furniture.select.generatorWrapGrip(elem);
	};
	
	return {
		getConfig : function() { return config; },
		getInstance : function() {return this; },
		generateSvgEditor : function($targetElem) { 
			initialize($targetElem);
		}
	};
	
	
}
