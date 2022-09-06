
for(var i=0; i<10; i++)
{
  var layer1 = activeDocument.artLayers.add();
  layer1.kind = LayerKind.TEXT;
  layer1.name = "number" + i.toString();
  var text1 = layer1.textItem;
  var content = "";
  //۰۱۲۳۴۵۶۷۸۹
  switch (i) {
      case 1:
          content = "۱";
          break;
      case 2:
          content = "۲";
          break;
      case 3:
          content = "۳";
          break;
      case 4:
          content = "۴";
          break;
      case 5:
          content = "۵";
          break;
      case 6:
          content = "۶";
          break;
      case 7:
          content = "۷";
          break;
      case 8:
          content = "۸";
          break;
      case 9:
          content = "۹";
          break;
  }
  text1.contents = content;
  text1.color.rgb.red = 230;
  text1.color.rgb.green = 27;
  text1.color.rgb.blue = 46;
  text1.size = 17;
  text1.font = "B Nazanin";
  text1.position = Array(256,256+i*50);
  text1.justification = Justification.CENTER;
}
