//"https://unpkg.com/moonjs@0.11.0/dist/moon.min.js"

const SceneGraph = { }

SceneGraph.init = function(Moon) { 
	
	// Primary
	Moon.component('Component', {
	})

	Moon.component('Interface', {
	})

	Moon.component('Children', {		
	})

	// Abstract
	Moon.component('Node', {
	})

	Moon.component('Scene', {
	})
	
	Moon.component('AnimationBase', {
	})

	// Renderable
	Moon.component('Poster', {
	})

	Moon.component('label', {
		props: ['text', 'width', 'height', 'horizAlign', 'vertAlign'],
		template:`<div class="label">LABEL:{{text}}</div>this is body:<slot></slot></div>`
	})

	Moon.component('Rectangle', {
	})

	// Animation

	Moon.component('Animation', {
	})

	Moon.component('SequentialAnimation', {
	})

	Moon.component('ParallelAnimation', {
	})

	Moon.component('ColorFieldInterpolator', {
	})

	Moon.component('FloatFieldInterpolator', {
	})

	Moon.component('Vector2DFieldInterpolator', {
	})

	// Typographic

	Moon.component('Font', {
	})

	Moon.component('ScrollingLabel', {
	})

	Moon.component('ScrollableText', {
	})

	// Control

	Moon.component('ContentNode', {
	})

	Moon.component('Task', {
	})

	Moon.component('MaskGroup', {
	})

	Moon.component('Timer', {
	})

	Moon.component('ComponentLibrary', {
	})

	Moon.component('ChannelStore', {
	})

	// Layout
	Moon.component('Group', {
	})
	
	Moon.component('ButtonGroup', {
	})
	
	Moon.component('LayoutGroup', {
	})
	
	Moon.component('TargetGroup', {
	})
	
	// Widget
	Moon.component('Button', {
	})

	Moon.component('TextEditBox', {
	})

	Moon.component('PinPad', {
	})

	Moon.component('Keyboard', {
	})

	Moon.component('MiniKeyboard', {
	})

	Moon.component('BusySpinner', {
	})

	// Dialog
	Moon.component('Dialog', {
	})

	Moon.component('KeyboardDialog', {
	})

	Moon.component('PinDialog', {
	})

	Moon.component('ProgressDialog', {
	})

	// List and Grid
	Moon.component('LabelList', {
	})

	Moon.component('MarkupList', {
	})

	Moon.component('PosterGrid', {
	})

	Moon.component('MarkupGrid', {
	})

	Moon.component('RowList', {
	})

	Moon.component('CheckList', {
	})

	Moon.component('RadioButtonList', {
	})

	Moon.component('TargetList', {
	})

	Moon.component('TargetSet', {
	})

	// Panel

	Moon.component('OverhangPanelSetScene', {
	})

	Moon.component('Overhang', {
	})

	Moon.component('PanelSet', {
	})
	
	Moon.component('Panel', {
	})

	Moon.component('ListPanel', {
	})

	Moon.component('GridPanel', {
	})


	// Media
	Moon.component('Audio', {
	})

	Moon.component('SoundEffect', {
	})

	Moon.component('Video', {
	})
}