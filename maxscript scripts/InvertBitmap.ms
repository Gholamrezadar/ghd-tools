b = openBitmap "C:\Users\Reza\Pictures\usaz8921-bw.jpeg"
a = copy b
for y=0 to a.height-1 do
(
	for x=0 to a.width-1 do
	(
		pixel = getPixels a [x,y] 1
		r = pixel[1].r
		g = pixel[1].g
		b = pixel[1].b
		col = color r g b 0.0
		setpixels a [x,y] #((color (255-r) (255-g) (255-b) (0)))
	)
)

display a

