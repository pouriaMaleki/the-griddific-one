Set = require('tiny-filmmaking-studio').Set

module.exports = class PhotoshopSet extends Set

	constructor: ->

		super

		@id = 'photoshop'

		@container = @_makeEl '#photoshop-container'
		.inside @film.display.stageEl

		bg = @_makeEl '#photoshop-bg'
		.inside @container

		@_setupDomEl 'Photoshop', 'BG', bg, [
			'translation', 'scale', 'opacity', 'rotation'
		]

		menubar = @_makeEl '#photoshop-menu-bar'
		.inside @container

		@_setupDomEl 'Photoshop', 'Menu Bar', menubar, ['opacity']

		windowHl = @_makeEl '#photoshop-window-selected'
		.inside @container

		@_setupDomEl 'Photoshop', 'Window Highlight', windowHl, ['opacity']

		windowmenu = @_makeEl '#photoshop-window'
		.inside @container

		@_setupDomEl 'Photoshop', 'Window', windowmenu, ['opacity']

		extensionsHighlight = @_makeEl '#photoshop-extensions-selected'
		.inside @container

		@_setupDomEl 'Photoshop', 'Extension-Heighlight', extensionsHighlight, [
			'translation', 'opacity'
		]

		extensions = @_makeEl '#photoshop-extensions'
		.inside @container

		@_setupDomEl 'Photoshop', 'Extensions', extensions, ['opacity']

		guides = @_makeEl '#photoshop-guides'
		.inside @container

		@_setupDomEl 'Photoshop', 'Guides', guides, ['opacity']

		tools = @_makeEl '#photoshop-tools'
		.inside @container
		.perspective 1000

		@_setupDomEl 'Photoshop', 'Tools', tools, [
			'translation', 'scale', 'opacity', 'rotation'
		]

		layers = @_makeEl '#photoshop-layers'
		.inside @container
		.perspective 1000

		@_setupDomEl 'Photoshop', 'Layers', layers, [
			'translation', 'scale', 'opacity', 'rotation'
		]

		grids1 = @_makeEl '#photoshop-grids .one'
		.inside @container

		@_setupDomEl 'Grids', 'Grids 1', grids1, [
			'opacity'
		]

		grids2 = @_makeEl '#photoshop-grids .two'
		.inside @container

		@_setupDomEl 'Grids', 'Grids 2', grids2, [
			'opacity'
		]

		grids3 = @_makeEl '#photoshop-grids .three'
		.inside @container

		@_setupDomEl 'Grids', 'Grids 3', grids3, [
			'opacity'
		]

		grids4 = @_makeEl '#photoshop-grids .four'
		.inside @container

		@_setupDomEl 'Grids', 'Grids 4', grids4, [
			'opacity'
		]

