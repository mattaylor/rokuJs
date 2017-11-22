var astring = require('astring')
var acorn = require('acorn')

const babyl = require('babylon')
const babel = require('babel-core')

var tab = '   '
var eol = '\n '
var esc = (str) => str.replace(/[\"\']/, '\\\"')
var log = (node) => JSON.stringify(node, ((k, v) => ['start', 'end', 'loc'].includes(k) ? undefined : v), ' ')
var ops = (op) => ({ '||' : 'OR', '&&': 'AND' , '!': 'NOT ', '==': '=', '===': '=' }[op] || op)
var inc = () => eol += tab
var dec = () => eol = eol.length > tab.length ? eol.slice(0, -tab.length) : eol

var proc = { 
	
	File: (n) => code(n.program),

	Program: (n) => n.body.map(code).join(eol),
	
	ExpressionStatement : (n) => code(n.expression) + (n.expression.trailingComments||[]).join(eol+'REM '),
	
	FunctionDeclaration: (n) => `Sub ${n.id.name} (${n.params.map(code).join(', ')})${bloc(n.body)}End Sub${eol}`,

	//ObjectMethod: (n) => `Sub ${n.id.name} (${n.params.map(codify).join(', ')})${indent(n.body)}End Sub${eol}`,
	
	BlockStatement: (n) => n.body.map(code).join(eol),

	Identifier: (n) => n.name,

	SwitchStatement: (n) => n.cases.map(kase => `if ${code(n.discriminant)} = ${code(kase.test)} Then ${list(kase.consequent,'')} End If`),
		
	ThrowStatement: (n) => `PRINT ${code(n.argument)+eol}STOP${eol}`,

	CallExpression: (n) => code(n.callee)+'('+(n.arguments.map(code).join(', '))+')',

	LabeledStatement: (n) => eol+code(n.label)+':'+eol+code(n.body),
	
	MemberExpression: (n) => code(n.object)+'.'+code(n.property),
	
	BreakStatement: (n) => '',
	
	ContinueStatement:(n) => eol+'GOTO '+(n.label ? n.label.name : '')+eol,

	UpdateExpression: (n) => n.prefix ? ops(n.operator)+code(n.argument) : code(n.argument)+ops(n.operator),

	//ObjectExpression: (n) => `{${inc()+ n.properties.map(code).join(','+eol)+ dec()}}`,
	ObjectExpression: (n) => `{${list(n.properties)}}`,
	
	//ArrayExpression: (n) =>  `[${inc()+ n.elements.map(code).join(','+eol)+ dec()}]`,
	ArrayExpression: (n) =>  `[${list(n.elements)}]`,
	
	ObjectProperty: (n) => code(n.key)+' : '+code(n.value),
	
	Property: (n) => code(n.key)+' : '+code(n.value),
	
	ForStatement: (n) => 
		`For ${code(n.init)} To `+ (n.test ? code(n.test.right) : '')
		+ (n.update ? ' Step '+ {'++':1, '--':-1}[n.update.operator] : '')
		+ bloc(n.body)+'End For',
	
	ReturnStatement: (n) => 'Return '+code(n.argument),
	
	ConditionalExpression: (n) => `IF ${code(n.test)} THEN ${code(n.test.left)} = ${code(n.consequent)} ELSE ${code(n.test.left)} = ${code(n.alternate)})`,
	
	UnaryExpression: (n) => n.prefix ? ops(n.operator)+ ' '+code(n.argument) : code(n.argument)+' '+ops(n.operator),
	
	BinaryExpression: (n) => code(n.left) +' '+n.operator+' '+code(n.right),
	
	AssignmentExpression: (n) => code(n.left) +' '+n.operator+' '+code(n.right),
	
	LogicalExpression: (n) => code(n.left) +' '+ops(n.operator)+' '+code(n.right), 

	TryStatement: (n) => `If ${n.handler.param.name} = Eval("${esc(code(n.block))}") Then ${bloc(n.handler.body)}End If`,
	
	FunctionExpression: (n) => 'Function ('+n.params.map(code).join(', ')+')'+bloc(n.body)+'End Function',
	
	ObjectMethod: (n) => 'Function('+n.params.map(code).join(', ')+')'+bloc(n.body)+'End Function',
	
	VariableDeclaration: (n) => n.declarations.map(code).join(eol), 
	
	VariableDeclarator: (n) => n.id.name +' = '+ code(n.init),

	SequenceExpression: (n) => n.expressions.map(code).join(', '),

	EmptyStatement: (n) => '',

	WhileStatement: (n) => `While ${code(n.test)+bloc(n.body)}End While`,

	DoWhileStatement: (n) => code(n.body)+eol+`While ${code(n.test)+bloc(n.body)}End While`,
	
	Literal: (n) => typeof n.value === 'String' ? esc(n.value.replace("'", '"')) : n.value,

	StringLiteral: (n) => '"'+esc(n.value)+'"',
	
	NullLiteral: (n) => 'Null',

	NumericLiteral: (n) => n.value,
	
	BooleanLiteral: (n) => n.value,
	
	MemberExpession : (n) => `${code(n.object)}.${code(n.property)}`,

	ForInStatement: (n) => `For Each ${code(n.left)} In ${code(n.right)} ${bloc(n.body)}End For`,
	
	IfStatement: (n) => `If ${code(n.test)} Then ${bloc(n.consequent) + bloc(n.alternate, 'Else')}End If`
}

var code = (node) => node && proc[node.type] ? proc[node.type](node) : `/*${log(node)}*/`// ${astring.generate(node)}`
var bloc = (node, pref='') => node ? pref + inc() + code(node) + dec() : ''
var list = (node, pref=',') => node ? inc() + node.map(code).join(pref+eol) + dec() : ''

module.exports = {
	//parse: (js) => babyl.parse(babel.transform(js, { presets: ["es2015"]}).code, { sourceType: 'script', plugins: ['estree']} ),
	parse: (js) => babel.transform(js, { presets: ["es2015"]}).ast,
	//build: (js) => astring.generate(module.exports.parse(js), { generator : Object.assign({}, astring.baseGenerator, brightGen) }) 
	build: (js) => code(module.exports.parse(js))
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