var len = activeDocument.artLayers.length // == 7


//len-1 = 6
//len-1-1 = 5 = lastCircle

for(var i=len-1-1; i>=0; i--)
{
    activeDocument.artLayers[i].name = "Circle_"+(len-1-i).toString()
}

/*
for(var i=0; i<len; i++)
{
    activeDocument.artLayers[i].name = "Cir        cle_"+(len-1-i).toString()
}*/

activeDocument.artLayers[len-1].name = "BG"

alert("Done!")