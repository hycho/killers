/**
 * Package : funiture-script
 * Licensed under the MIT License
 * Copyright(c) 2010 Cho Ho Young
 * add on dependency snap.svg (http://snapsvg.io/)
 */

var furniture = furniture || {};



(function() {
	if (!furniture.select) {
		furniture.select = {};
	}
	
	var selectorGrips = {
		'nw': null,
		'n' :  null,
		'ne': null,
		'e' :  null,
		'se': null,
		's' :  null,
		'sw': null,
		'w' :  null
	};
	
	var createWrapGrip = function(elem){
		var gripPosition = getWrapGripPosition(elem);
		console.log(gripPosition);
		
		
/*		$.each(selectorGrips, function(position){
			
		});
		
		var bigCircle = s.circle(150, 150, 100);*/
		
		/*var grip = svgFactory_.createSVGElement({
			'element': 'circle',
			'attr': {
				'id': ('selectorGrip_resize_' + dir),
				'fill': '#22C',
				'r': gripRadius,
				'style': ('cursor:' + dir + '-resize'),
				// This expands the mouse-able area of the grips making them
				// easier to grab with the mouse.
				// This works in Opera and WebKit, but does not work in Firefox
				// see https://bugzilla.mozilla.org/show_bug.cgi?id=500174
				'stroke-width': 2,
				'pointer-events': 'all'
			}
		});*/
	};
	
	var getWrapGripPosition = function(elem){
		var position = {};
		var box = elem.getBBox();
		
		$.each(selectorGrips, function(positionNm){
			switch(positionNm) {
			    case 'nw':
			    	position[positionNm] = {"x":box.x, "y":box.y};
			        break;
			    case 'n':
			    	position[positionNm] = {"x": (box.width / 2) + box.x, "y":box.y};
			        break;
			    case 'ne':
			    	position[positionNm] = {"x": box.width + box.x, "y":box.y};
			        break;
			    case 'e':
			    	position[positionNm] = {"x": box.width + box.x, "y":box.y}; //작업중
			        break;
			    case 'se':
			        
			        break;
			    case 's':
			        
			        break;
			    case 'sw':
			        
			        break;
			    case 'w':
			        
			        break;
			}
		});
		return position;
	}
	
	furniture.select.generatorWrapGrip = function(elem) {
		createWrapGrip(elem);
	};
	
})();