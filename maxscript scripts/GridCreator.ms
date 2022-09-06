space = 0.1
a = 1

for y=0 to 2 do
(
	for x=0 to 2 do
	(
		box width:a height:space length:a pos:[x-1,y-1,0.0] name:((x+1) as string+","+(y+1) as string)
	)
)