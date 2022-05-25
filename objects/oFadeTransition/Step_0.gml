/// @description Insert description here
// You can write your code in this editor

if ( !layer_exists(layerBgFade) )
{
	layerBgFade = layer_create(-1000, "BackgroundFlash");
	layerBgFadeElement = layer_background_create(layerBgFade, -1);
	layer_background_alpha(layerBgFadeElement, fadeAlpha);
	layer_background_blend(layerBgFadeElement, fadeColor);
}

if ( fadeTimer >= 0 )
{
	if ( fadeIn ) { fadeAlpha = fadeTimer / fadeFrames; }
	if ( fadeOut ) { fadeAlpha = 1 - ( fadeTimer / fadeFrames ); }
	fadeTimer--;
}

layer_background_alpha(layerBgFadeElement, fadeAlpha);
layer_background_blend(layerBgFadeElement, fadeColor);
