PImage pic1, pic2, pic3, pic4, pic5;
float picX1, picY1, picWidth1, picHeight1;
float picX2, picY2, picWidth2, picHeight2;
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
  picX2 = selectingSurfaceXCenter-selectButtonWidth*2;
  picY2 = ppButtonY;
  picWidth2 = ppButtonHeight;
  picHeight2 = ppButtonHeight;
  //
  image(pic2, picX2, picY2, picWidth2, picHeight2);
}
