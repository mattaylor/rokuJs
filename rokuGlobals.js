var sleep = function(secs) { 
	var end = new Date() + secs*1000
	while (new Date() < end);
}

var m = { top : {
	findNode : (el) => document.getElementById(el)
} } 