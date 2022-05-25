// Script : Moves player to follow a target NPC

function ScrPlayerFollowNPC(_objToFollow, followSpeed) {

if (point_distance(x,y,_objToFollow.x, _objToFollow.y) > 30) {
	direction = point_direction(x,y,_objToFollow.x, _objToFollow.y);
	speed = followSpeed;
} else speed = 0;

}

function ScrPlayerFaceObject(_objToFace) {
	
if (x < _objToFace.x) { image_xscale = 1} else {image_xscale = -1}

}
