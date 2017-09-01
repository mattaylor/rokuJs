var brs = require('./brightscript.js')
var cmd = require('commander')
var fs  = require('fs')


cmd
.version('0.1.0')
.usage('[options] <file ...>')
.option('-p, --parse', 'Parse only')
.option('-i, --dir <inputDir>')
.option('-o, --out <outputDir>', 'Name of the output file')
//.command('parse [file]', 'Parse JS file')
//.command('build [file]', 'Convert Web Component to Brightscript')
//.comman('trans [file]', 'Convert single JS file to BrightScript', {isDefault: true})
.parse(process.argv)


cmd.args.map(file => {
	var jsPath = (cmd.inpDir||'./')+file
	console.log('Parsing ', file)
	try { 
		var bsPath = (cmd.inpDir||'./')+file.replace(/.js$/, '.brs') 
		var jsCode = fs.readFileSync(jsPath, 'utf-8')
		var bsCode = brs.build(jsCode)
		fs.writeFileSync(bsPath, bsCode, 'utf-8')
	} catch(e) { 
		console.log(e.message)
	}
})
