for o in selection do 
(
	id = random 1 3
	colors = #(color 255 0 0, color 0 255 0, color 0 0 255)
	o.wirecolor = colors[id]
)