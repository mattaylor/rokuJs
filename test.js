var brs = require('./brightscript.js')
var fs  = require('fs')

var testDir = './fixtures'

if (process.argv[2]) process.argv.slice(2).forEach(test => runTests(testDir+'/'+test))
else runTests(testDir)

function runTests(path) { 
	if (fs.statSync(path).isDirectory()) return fs.readdirSync(path).forEach(file => runTests(path+'/'+file)) 
	if (path.includes('invalid') || !path.endsWith('.js')) return
	console.log(`\n-----\nTESTING ${path} ::`)
	var jsCode = fs.readFileSync(path, 'utf-8')
	console.log(`\nJS CODE:\n ${jsCode}\nBS CODE:`)
	try { console.log(brs.build(jsCode)) } catch (e) { console.log(e.message ) }
}