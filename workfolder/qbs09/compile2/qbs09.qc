$modelname "weapons\arc9\c_uplp_qbs09.mdl"

$bodygroup "rec" { // 0
	studio "qbs09.smd" // 0
}

$bodygroup "stock" { // 1
	studio "qbs09_stock.smd"
	studio "qbs09_stock_in.smd"
	blank
}

$bodygroup "rnd" { // 2
	studio "ammo r.smd" // 0
	studio "ammo b.smd" // 1
	studio "ammo bl.smd" // 2
	studio "ammo g.smd" // 3
	studio "ammo o.smd" // 4
	studio "ammo y.smd" // 5
	blank  // 6
}

$cdmaterials "models\weapons\arc9\uplp"

$attachment "1" "barrel" 0 0 0 rotate -90 0 0
$attachment "2" "bolt" 0 0 0 rotate -10 140 180
$attachment "3" "Camera" 0 0 0 rotate -90 0 0
 
$surfaceprop "default"
 
$contents "solid"
 
$illumposition 0 0 0

$bbox 0 0 0 0 0 0
 
$cbox 0 0 0 0 0 0

$poseparameter "sights" 0 1 loop 0

$sequence "ref"{
	"anims\idle_iron.smd"
	fps 30
	"ACT_VM_IDLE" 1
	snap
}

$sequence "idle"{
	"anims\idle.smd" 
	"anims\idle_iron.smd"
	fps 30
	"ACT_VM_IDLE" 1
 	blend "sights" 0 1
	loop
	snap
	node "Ready"
}

$sequence "idle_empty"{
	"anims\idle_empty.smd" 
	"anims\idle_empty_iron.smd"
	fps 30
	"ACT_VM_IDLE" 1
 	blend "sights" 0 1
	loop
	snap
	node "Ready"
}

$sequence "fire" {
	"anims\fire.smd"
	"anims\fire_iron.smd"
 	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.03
	fadeout 0.2
	{ event 5001 0 "1" }
}

$sequence "fire_empty" {
	"anims\fire_empty.smd"
	"anims\fire_empty_iron.smd"
 	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.03
	fadeout 0.2
	{ event 5001 0 "1" }
}


$sequence "ready" {
	"anims\ready.smd"
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "sgreload_start" {
	"anims\sgreload_start.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "sgreload_start_empty" {
	"anims\sgreload_start_empty.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "sgreload_insert" {
	"anims\sgreload_insert.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "sgreload_finish" {
	"anims\sgreload_end.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "draw" {
	"anims\draw.smd"
	fps 30
	snap
}
$sequence "holster" {
	"anims\holster.smd"
	fps 30
	snap
}

// inspect todo

$bonemerge "hookontop"
$bonemerge "catch"
$bonemerge "bullet1"
$bonemerge "bullet2"
$bonemerge "bolt"
$bonemerge "bulletdoor"
$bonemerge "tac"

$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Wrist"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"

$collisionmodel "qbs09.smd"
{
	$mass 5
}