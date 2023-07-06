
global.bosshealthisadeadconcept -= 1


if global.bosshealthisadeadconcept = 0 {
instance_destroy()
ojake.hp += 100

}

if ojake.hp > 100 {
 ojake.hp = 100	
}