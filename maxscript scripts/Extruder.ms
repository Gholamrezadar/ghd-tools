convertTo $ PolyMeshObject
count = polyop.getNumFaces $

--For Loop : Extrusion
for i=1 to count do
(
	rand = random 3 8
	polyop.extrudeFaces $ #(i) rand
)