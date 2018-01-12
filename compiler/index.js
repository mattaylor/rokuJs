var brs = require('./brightscript.js')
var cmd = require('commander')
var fs = require('fs')
var mkdir = require('mkdirp')

cmd
  .version('0.1.0')
  .usage('[options] <file ...>')
  .option('-p, --parse', 'Parse only')
  .option('-i, --inpDir <inpDir>')
  .option('-o, --outDir <outDir>', 'Name of the output Directory')
  .parse(process.argv)

cmd.args.map(compile)

function compile (path) {
  var jsPath = (cmd.inpDir || '.') + '/' + path
  var bsPath = (cmd.outDir || '.') + '/' + path.replace(/.js$/, '.brs')
  if (fs.statSync(jsPath).isDirectory()) {
    if (!fs.existsSync(bsPath)) mkdir.sync(bsPath)
    return fs.readdirSync(jsPath).forEach(file => compile(path + '/' + file))
  }
  if (path.includes('invalid') || !path.endsWith('.js')) return
  console.log(`\nCompiling ${jsPath} to ${bsPath}`)
  try {
    var jsCode = fs.readFileSync(jsPath, 'utf-8')
    var bsCode = brs.build(jsCode)
    fs.writeFileSync(bsPath, bsCode, 'utf-8')
  } catch (e) {
    console.log(e.message)
  }
}
