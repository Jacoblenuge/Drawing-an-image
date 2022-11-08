//Global Variables
int appHeight, appWidth;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
float largerDimension, smallerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
Boolean widthLarger = false, heightLarger = false;
Boolean nightMode = false;
//
size(1000, 800);//Landscape
//Copy Display Algorithm from hello world 
appWidth = width;
appHeight = height;
//
//Aspect Ratio of Background Image
//Spitfire_-_Season_Premiere_Airshow_2018_(cropped).jpg
//Note: Dimensions are found in the image file / Right Click / Properties / Details
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
/*Aspect Ratio Calculations,Older Calculations
 if (widthLarger == true) imageWidthRatio = largerDimension / largerDimension;
 if (widthLarger == true) imageHeightRatio = smallerDimension / largerDimension;
 if (heightLarger == true) imageHeightRatio = largerDimension / largerDimension;
 if (heightLarger == true) imageWidthRatio = smallerDimension / largerDimension;
 */
//
//Better Image Stretch Algorithm
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
//We know the Width is the larger Dimension
if ( appWidth >= picWidth) {
  picWidthAdjusted = picWidth;//Streching larger dimension
  //
  if (widthLarger == true) imageWidthRatio = largerDimension / largerDimension;
  if (heightLarger == true) imageWidthRatio = smallerDimension / largerDimension;
  //
  if (appHeight >= picHeight) {
    //Calculated Dimension b/c smaller then width
     if (widthLarger == true) imageHeightRatio = smallerDimension / largerDimension;
     if (heightLarger == true) imageHeightRatio = largerDimension / largerDimension;
     picHeightAdjusted= picWidthAdjusted * imageHeightRatio;
  } else {
     //Image smaller than Canvas, needs separate algorithm
  }
} else {
  //Image smaller than Canvas, needs separate algorithm
}
//
//population
pic = loadImage("../Images used/Spitfire_-_Season_Premiere_Airshow_2018_(cropped).jpg");
tint(0, 153, 204, 126);  // Tint blue and set transparency
backgroundImageX = appWidth*0 ;
backgroundImageY = appHeight*0 ;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
println(appWidth, picWidth, picWidthAdjusted);
println(appHeight, picHeight, picHeightAdjusted);
//
//Rectangular Layout and Image Drawing to CANVAS
//rect(pic, backgroundImageX, backgroundImageY,picWidthAdjusted, picHeightAdjusted );
//
if (nightMode == false)tint(255, 64); //Gray Scale Day Use: use 1/2 tint value for white (i.e. 128/256=1/2)
if (nightMode == true)tint(64, 64, 40); //RGB:ight Mode
image(pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
