PImage pic1, pic2, pic3, pic4, pic5, pic6, pic7, pic8, pic9, pic10;
float picX1, picY1, picWidth1, picHeight1; //Song1, 3 Image
float picX2, picY2, picWidth2, picHeight2; //Reverse png
float picX3, picY3, picWidth3, picHeight3; //FastForward png
float picX4, picY4, picWidth4, picHeight4; //PrevSong png
float picX5, picY5, picWidth5, picHeight5; //NextSong png
float picX6, picY6, picWidth6, picHeight6; //Loop png
float picX7, picY7, picWidth7, picHeight7; //NoSound png
float picX8, picY8, picWidth8, picHeight8; //SoundOn png
float picX9, picY9, picWidth9, picHeight9; //Song 2 Image
float picX10, picY10, picWidth10, picHeight10;
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
//
void image7() {
  pic7 = loadImage("nosound.jpeg");
  picX7 = selectingSurfaceXCenter-selectingSurfaceWidth*1/8-ppButtonHeight*1/2;
  picY7 = ppButtonY+ppButtonHeight*1/4;
  picWidth7 = ppButtonHeight*1/2;
  picHeight7 = ppButtonHeight*1/2;
  //
  image(pic7, picX7, picY7, picWidth7, picHeight7);
}
//
void image8() {
  pic8 = loadImage("soundon.png");
  picX8 = selectingSurfaceXCenter-selectingSurfaceWidth*1/8-ppButtonHeight*1/2;
  picY8 = ppButtonY+ppButtonHeight*1/4;
  picWidth8 = ppButtonHeight*1/2;
  picHeight8 = ppButtonHeight*1/2;
  //
  image(pic8, picX8, picY8, picWidth8, picHeight8);
}
//
//
void image9() {
  pic9 = loadImage("yticon.png");
  picX9 = selectingSurfaceWidth*2/5;
  picY9 = selectButtonHeight*5;
  picWidth9 = selectingSurfaceWidth*1/5;
  picHeight9 = picWidth1;
  //
  image(pic9, picX9, picY9, picWidth9, picHeight9);
}
//
void image10() {
  pic10 = loadImage("pause12.jpeg");
  picX10 = selectingSurfaceWidth*2/5;
  picY10 = selectButtonHeight*5;
  picWidth10 = selectingSurfaceWidth*1/5;
  picHeight10 = picWidth1;
  //
  image(pic10, picX10, picY10, picWidth10, picHeight10);
}
