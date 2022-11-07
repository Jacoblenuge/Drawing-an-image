//Global Variables
int appHeight, appWidth;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
float largerDimension, smallerDimension,imageWidthRatio=0.0,imageHeightRatio=0.0;
Boolean widthLarger = false,heightLarger = false;
Boolean nightMode = false;
//
size(15000, 1000);//Landscape
//Copy Display Algorithm from hello world 
appWidth = width;
appHeight = height;
//
//Aspect Ratio of Background Image
//Spitfire_-_Season_Premiere_Airshow_2018_(cropped).jpg
int picWidth =  3811;
int picHeight = 2768;
//Image Orientation: Landscape, Square, Portrait
if ( picWidth >= picHeight) {//True if Landscape or Square
largerDimension = picWidth;
smallerDimension = picHeight;
widthLarger = true;
} else {//False if Portrait
 largerDimension = picHeight;
smallerDimension = picWidth;
heightLarger = true; 
}
//
//Aspect Ratio Calculations
if (widthLarger == true) imageWidthRatio = largerDimension / largerDimension;
if (widthLarger == true) imageHeightRatio = smallerDimension / largerDimension;
if (heightLarger == true) imageHeightRatio = largerDimension / largerDimension;
if (heightLarger == true) imageWidthRatio = smallerDimension / largerDimension;
//population
pic = loadImage("../Images used/Spitfire_-_Season_Premiere_Airshow_2018_(cropped).jpg");
tint(0, 153, 204, 126);  // Tint blue and set transparency
backgroundImageX = appWidth*0 ;
backgroundImageY = appHeight*0 ;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
// Adjust Image Variables for Aspect Ratio
float picWidthAdjusted, picHeightAdjusted;
picWidthAdjusted = backgroundImageWidth * imageWidthRatio;
picHeightAdjusted= backgroundImageHeight * imageHeightRatio;
//Rectangular Layout and Image Drawing to CANVAS
//rect(pic, backgroundImageX, backgroundImageY,picWidthAdjusted, picHeightAdjusted );
//
if (nightMode == false)tint(255, 64); //Gray Scale Day Use: use 1/2 tint value for white (i.e. 128/256=1/2)
if (nightMode == true)tint(64, 64, 40); //RGB:ight Mode
image(pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
