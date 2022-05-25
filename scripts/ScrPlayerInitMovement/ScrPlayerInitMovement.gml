// Script assets have changed for v2.3.0 see

function ScrPlayerInitMovement() {
	xSpd = 0;
	ySpd = 0;

	groundAccel = 1.0;
	airAccel    = 0.4;

	runSpeed = 3;
	runAccel = groundAccel;

	grav = 0.6;
	gravDisable = false;
	isGrounded = true;

	jumpSpeed = 13;
	jumpGrav  = 2;

	faceDir = 1;
	disableFlip = -1;

	haltMovement  = false;
	followObject = false;
	objToFollow = 0;
	faceObject = false;
	objToFace = false;
	stopCollision = false;
	ghostCollide  = false;

	
}
