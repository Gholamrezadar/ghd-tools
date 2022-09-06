global BulletID = 0

fn Shoot =
(
	ray1 = $MainCamera as Ray
	hitpoints = intersectRayScene ray1
	if(hitpoints.count != 0) then
	(
		BulletID += 1
		sphere pos:(hitpoints[1][2].pos) radius:0.03 name:("Bullet_"+(BulletID as string)) wirecolor:Black
	)
)

for i=0 to 25 do
(	
-- 	Initializing Radius
	
-- 	at time 0
-- 		(
-- 			with animate on
-- 			(
-- 				if(a != undefined) then
-- 				(
-- 					a.radius = 0.0
-- 				)
-- 			)
-- 		)
		
-- 	Animating Radius	
	at time i
	(
		with animate on
		(
				a = Shoot()
-- 			if(a != undefined) then
-- 			(
-- 				a.radius = 0.003
-- 			)
		)
	)
)

