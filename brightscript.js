var astring = require('astring')
var acorn = require('acorn')

const babyl = require('babylon')
const babel = require('babel-core')

var tab = '  '
var eol = '\n'
var esc = (str) => str.replace(/[\"\']/, '\\\"')
var log = (node) => JSON.stringify(node, ((k, v) => ['start', 'end', 'loc'].includes(k) ? undefined : v), ' ')
var ops = (op) => ({ '||' : 'OR', '&&': 'AND' , '!': 'NOT ', '==': '=', '===': '=' }[op] || op)
var inc = () => eol += tab
var dec = () => eol = eol.length > tab.length ? eol.slice(0, -tab.length) : eol

var astNode = { 
	
	File: (n) => codify(n.program),

	Program: (n) => n.body.map(codify).join(eol),
	
	ExpressionStatement : (n) => codify(n.expression) + (n.expression.trailingComments||[]).join(eol+'REM '),
	
	FunctionDeclaration: (n) => `Sub ${n.id.name} (${n.params.map(codify).join(', ')})${indent(n.body)}End Sub${eol}`,

	//ObjectMethod: (n) => `Sub ${n.id.name} (${n.params.map(codify).join(', ')})${indent(n.body)}End Sub${eol}`,
	
	BlockStatement: (n) => n.body.map(codify).join(eol),

	Identifier: (n) => n.name,

	SwitchStatement: (n) => n.cases.map(kase => 
		`if ${codify(n.discriminant)} = ${codify(kase.test)} Then `+inc()+kase.consequent.map(codify).join(eol))+dec()+'End If',
	
	ThrowStatement: (n) => `PRINT ${codify(n.argument)}${eol}STOP${eol}`,

	CallExpression: (n) => codify(n.callee)+'('+(n.arguments.map(codify).join(', '))+')',

	LabeledStatement: (n) => eol+codify(n.label)+':'+eol+codify(n.body),
	
	MemberExpression: (n) => codify(n.object)+'.'+codify(n.property),
	
	BreakStatement: (n) => '',
	
	ContinueStatement:(n) => eol+'GOTO '+(n.label ? n.label.name : '')+eol,

	UpdateExpression: (n) => n.prefix ? ops(n.operator)+codify(n.argument) : codify(n.argument)+ops(n.operator),

	ObjectExpression: (n) => '{'+ inc() + n.properties.map(codify).join(','+eol)+ dec()+'}',
	
	ArrayExpression: (n) => '['+ inc() + n.elements.map(codify).join(','+eol)+ dec()+']',
	
	ObjectProperty: (n) => codify(n.key)+' : '+codify(n.value),
	
	Property: (n) => codify(n.key)+' : '+codify(n.value),
	
	ForStatement: (n) => 
		`For ${codify(n.init)} To `+ (n.test ? codify(n.test.right) : '')
		+ (n.update ? ' Step '+ {'++':1, '--':-1}[n.update.operator] : '')
		+ indent(n.body)+'End For',
	
	ReturnStatement: (n) => 'Return '+codify(n.argument),
	
	ConditionalExpression: (n) => `IF ${codify(n.test)} THEN ${codify(n.test.left)} = ${codify(n.consequent)} ELSE ${codify(n.test.left)} = ${codify(n.alternate)})`,
	
	UnaryExpression: (n) => n.prefix ? ops(n.operator)+codify(n.argument) : codify(n.argument)+ops(n.operator),
	
	BinaryExpression: (n) => codify(n.left) +' '+n.operator+' '+codify(n.right),
	
	AssignmentExpression: (n) => codify(n.left) +' '+n.operator+' '+codify(n.right),
	
	LogicalExpression: (n) => codify(n.left) +' '+ops(n.operator)+' '+codify(n.right), 

	TryStatement: (n) => `If ${n.handler.param.name} = Eval("${esc(codify(n.block))}") Then ${indent(n.handler.body)}End If`,
	
	FunctionExpression: (n) => 'Function ('+n.params.map(codify).join(', ')+')'+indent(n.body)+'End Function',
	
	ObjectMethod: (n) => 'Function('+n.params.map(codify).join(', ')+')'+indent(n.body)+'End Function',
	
	VariableDeclaration: (n) => n.declarations.map(codify).join(eol), 
	
	VariableDeclarator: (n) => n.id.name +' = '+ codify(n.init),

	SequenceExpression: (n) => n.expressions.map(codify).join(', '),

	EmptyStatement: (n) => '',

	WhileStatement: (n) => `While ${codify(n.test)+indent(n.body)}End While`,

	DoWhileStatement: (n) => codify(n.body)+eol+`While ${codify(n.test)+indent(n.body)}End While`,
	
	Literal: (n) => typeof n.value === 'String' ? esc(n.value.replace("'", '"')) : n.value,

	StringLiteral: (n) => '"'+esc(n.value)+'"',
	
	NullLiteral: (n) => 'Null',

	NumericLiteral: (n) => n.value,
	
	BooleanLiteral: (n) => n.value,
	
	MemberExpession : (n) => `${codify(n.object)}.${codify(n.property)}`,

	ForInStatement: (n) => `For Each ${codify(n.left)} In ${codify(n.right)} ${indent(n.body)}End For`,
	
	IfStatement: (n) => `If ${codify(n.test)} Then ${indent(n.consequent) + indent(n.alternate, 'Else')}End If`
}

var codify = (node) => node && astNode[node.type] ? astNode[node.type](node) : `/*${log(node)}*/`// ${astring.generate(node)}`
var indent = (node, pref='') => node ? (pref + inc() + codify(node) + dec()) : ''

module.exports = {
	//parse: (js) => babyl.parse(babel.transform(js, { presets: ["es2015"]}).code, { sourceType: 'script', plugins: ['estree']} ),
	parse: (js) => babel.transform(js, { presets: ["es2015"]}).ast,
	//build: (js) => astring.generate(module.exports.parse(js), { generator : Object.assign({}, astring.baseGenerator, brightGen) }) 
	build: (js) => codify(module.exports.parse(js))
}


/* custom astring generators
var brightGen = {
	FunctionDeclaration:(n, s) => {
		s.write(`sub ${n.id.name} (`)
		n.params.forEach(p => s.generator[p.type](p, s))
		s.write(')')
		s.generator[n.body.type](n.body, s)
		s.write('end sub\n')
	},

	BlockStatement : (n, s) => { 
		s.write('\n')
		s.write(s.indent.repeat(++s.indentLevel))
		n.body.forEach(b => s.generator[b.type](b, s))
		s.write('\n')
		s.indentLevel--
	},

	ForInStatement : (n, s) => {
		s.write(`\nfor each ${n.left.name} in`)
		s.generator[n.right.type](n.right, s)
		s.generator[n.body.type](n.body, s)
		s.write('end for\n')
	}, 

	IfStatement : (n, s) => {
		s.write('if ')
		s.generator[n.test.type](n.test, s) 
		s.write(' then ') 
		s.generator[n.consequent.type](n.consequent, s) 
		if (n.alternate) {
			s.write(' Else ')
			s.generator[n.alternate](n.alternate, s)
		}
		s.write(' end if ')
	}
}
*/