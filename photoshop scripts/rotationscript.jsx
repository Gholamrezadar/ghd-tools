var mylayer = app.activeDocument.activeLayer ;
var num = prompt("Enter a Value : " , 6 , "Num");
var angle = 360/num;

for (var i = 0; i < num; i++) {
	
	var newlayer = mylayer.duplicate();
	newlayer.rotate(angle*i , AnchorPosition.BOTTOMCENTER);

};

