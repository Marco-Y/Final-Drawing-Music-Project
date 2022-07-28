PImage pic1, pic2, pic3, pic4, pic5, pic6, pic7;
float picX1, picY1, picWidth1, picHeight1; //Song1  Image
float picX2, picY2, picWidth2, picHeight2; //Reverse png
float picX3, picY3, picWidth3, picHeight3; //FastForward png
float picX4, picY4, picWidth4, picHeight4; //PrevSong png
float picX5, picY5, picWidth5, picHeight5; //NextSong png
float picX6, picY6, picWidth6, picHeight6; //Loop png
float picX7, picY7, picWidth7, picHeight7; 
//
void image1() {
  pic1 = loadImage("annodominibeats.jpeg");
  picX1 = selectingSurfaceWidth*2/5;
  picY1 = selectButtonHeight*5;
  picWidth1 = selectingSurfaceWidth*1/5;
  picHeight1 = picWidth1;
  //
  image(pic1, picX1, picY1, picWidth1, picHeight1);
}
//
void image2() {
  pic2 = loadImage("reverse.png");
  picX2 = selectingSurfaceXCenter-selectingSurfaceWidth*2/5;
  picY2 = ppButtonY;
  picWidth2 = ppButtonHeight;
  picHeight2 = ppButtonHeight;
  //
  image(pic2, picX2, picY2, picWidth2, picHeight2);
}
//
void image3() {
  pic3 = loadImage("fastforward.png");
  picX3 = selectingSurfaceXCenter+selectingSurfaceWidth*3/10;
  picY3 = ppButtonY;
  picWidth3 = ppButtonHeight;
  picHeight3 = ppButtonHeight;
  //
  image(pic3, picX3, picY3, picWidth3, picHeight3);
}
//
void image4() {
  pic4 = loadImage("prevsong.png");
  picX4 = selectingSurfaceXCenter-selectingSurfaceWidth*3/10;
  picY4 = ppButtonY;
  picWidth4 = ppButtonHeight;
  picHeight4 = ppButtonHeight;
  //
  image(pic4, picX4, picY4, picWidth4, picHeight4);
}
//
void image5() {
  pic5 = loadImage("nextsong.png");
  picX5 = selectingSurfaceXCenter+selectingSurfaceWidth*1/5;
  picY5 = ppButtonY;
  picWidth5 = ppButtonHeight;
  picHeight5 = ppButtonHeight;
  //
  image(pic5, picX5, picY5, picWidth5, picHeight5);
}
//
void image6() {
  pic6 = loadImage("loop.png");
  picX6 = selectingSurfaceXCenter+selectingSurfaceWidth*1/8;
  picY6 = ppButtonY+ppButtonHeight*1/4;
  picWidth6 = ppButtonHeight*1/2;
  picHeight6 = ppButtonHeight*1/2;
  //
  image(pic6, picX6, picY6, picWidth6, picHeight6);
}
