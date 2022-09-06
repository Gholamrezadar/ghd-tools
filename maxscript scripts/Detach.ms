for o in selection do
		(
			converttopoly o
			numfaces = polyop.getNumFaces o
			for i=1 to (numfaces) do
			(
				polyop.detachFaces o i delete:false asNode:true name:(o.name+("face_001"))
			)
			hide o
		)