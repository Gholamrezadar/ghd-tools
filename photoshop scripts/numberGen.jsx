
for(var i=0; i<10; i++)
{
  var layer1 = activeDocument.artLayers.add();
  layer1.kind = LayerKind.TEXT;
  layer1.name = "number" + i.toString();
  var text1 = layer1.textItem;
  text1.contents = i.toString();
  text1.color.rgb.red = 230;
  text1.color.rgb.green = 27;
  text1.color.rgb.blue = 46;
  text1.size = 17;
  text1.position = Array(256,256+i*50);
  text1.justification = Justification.CENTER;
}
