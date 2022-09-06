var mylayer = app.activeDocument.activeLayer ;
var num = prompt("Enter a Value : " , 10 , "Num");

for (var i = 0; i < num; i++) {
	
	var newlayer = mylayer.duplicate();
	newlayer.translate(i*10*Math.cos(i*50),i*10*Math.sin(i*50));

};

