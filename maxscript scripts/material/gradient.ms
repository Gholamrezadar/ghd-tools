for o in selection do 
(
	r = o.pos.x
	g = o.pos.y/10*255
	b = o.pos.z	
	o.wirecolor = color g g g
)