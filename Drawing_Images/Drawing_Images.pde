//Global Variables
int appHeight, appWidth;
float backgroundImageX, backgroundImageY, backgroundImageWidth ,backgroundImageHeight;
PImage pic;
//
size(900,800);//Landscape
//Copy Display Algorithm
appWidth = width;
appHeight = height;
//
//population
pic = loadImage("../Images used/Spitfire_-_Season_Premiere_Airshow_2018_(cropped).jpg");
tint(0, 153, 204, 126);  // Tint blue and set transparency
backgroundImageX = appWidth*0 ;
backgroundImageY = appHeight*0 ;
backgroundImageWidth = appWidth-1 ;
backgroundImageHeight = appHeight-1 ;
//Rectangular Layout and Image Drawing to CANVAS
rect(backgroundImageX, backgroundImageY, backgroundImageWidth ,backgroundImageHeight );
//tint(255, 50); //use 1/2 tint value for white (i.e. 128/256=1/2)
//tint(128, 128, 50); //Night Mode
image(pic, backgroundImageX, backgroundImageY, backgroundImageWidth ,backgroundImageHeight );
