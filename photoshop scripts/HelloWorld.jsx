backgroundColor.rgb.red =30
backgroundColor.rgb.green = 30
backgroundColor.rgb.blue = 30

var doc1 = documents.add
                        (512
                        ,512
                        ,300
                        ,"GeneratedDoc1"
                        ,NewDocumentMode.RGB
                        ,DocumentFill.BACKGROUNDCOLOR)

var layer1 = doc1.artLayers.add()
    layer1.kind = LayerKind.TEXT;
    layer1.name = "Layer1"
var text1 = layer1.textItem
    text1.contents = "Hello, World"
    text1.color.rgb.red = 230
    text1.color.rgb.green = 27
    text1.color.rgb.blue = 46
    text1.size = 17
    text1.position = Array(256,256)
    text1.justification = Justification.CENTER