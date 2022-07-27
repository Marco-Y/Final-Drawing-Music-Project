PImage pic1, pic2, pic3;
float picX1, picY1, picWidth1, picHeight1;
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
