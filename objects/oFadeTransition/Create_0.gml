/// @description Insert description here
// You can write your code in this editor

fadeIn    = false;
fadeOut   = false;
fadeAlpha = 1;
fadeColor = c_black;
fadeFrames = 60;
fadeTimer  = fadeFrames;

layerBgFade = layer_create(-1000, "BackgroundFlash");
layerBgFadeElement = layer_background_create(layerBgFade, -1);
layer_background_alpha(layerBgFadeElement, fadeAlpha);
layer_background_blend(layerBgFadeElement, fadeColor);
