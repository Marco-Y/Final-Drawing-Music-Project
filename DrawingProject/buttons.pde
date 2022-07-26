//Global Variables
float selectButtonX, selectButtonY, selectButtonWidth, selectButtonHeight;
float selectPenButtonX, selectPenButtonY, selectPenButtonWidth, selectPenButtonHeight;
float penRectX, penRectY, penRectWidth, penRectHeight;
float sizeButtonX, sizeButtonY, sizeButtonWidth, sizeButtonHeight;
float penTipX, penTipY, penTipX2, penTipY2, penTipX3, penTipY3;
float selectCircleButtonX, selectCircleButtonY, selectCircleButtonWidth, selectCircleButtonHeight;
float selectCircleEllipseX, selectCircleEllipseY, selectCircleEllipseDiameter;
//
void selectButton() {
  selectButtonX = width*0;
  selectButtonY = height*0;
  selectButtonWidth = selectingSurfaceWidth*1/5;
  selectButtonHeight = selectingSurfaceHeight*1/7;
  rect(selectButtonX, selectButtonY, selectButtonWidth, selectButtonHeight);
}
//
void selectPenButton() {
  selectPenButtonX = selectingSurfaceWidth*1/5;
  selectPenButtonY = selectButtonY;
  selectPenButtonWidth = selectButtonWidth;
  selectPenButtonHeight = selectButtonHeight;
  penRectX = selectPenButtonX+selectPenButtonX*3.5/10;
  penRectY = selectingSurfaceHeight*1/25;
  penRectWidth = selectPenButtonWidth*3/10;
  penRectHeight = selectButtonHeight*3/5;
  penTipX = penRectX+penRectWidth*1/2;
  penTipY = penRectY-penRectHeight*1/4; 
  penTipX2 = penRectX; 
  penTipY2 = penRectY;
  penTipX3 = penRectX+penRectWidth;
  penTipY3 = penRectY;
  //
  rect(selectPenButtonX, selectPenButtonY, selectPenButtonWidth, selectPenButtonHeight);
  fill(defaultGrey);
  rect(penRectX, penRectY, penRectWidth, penRectHeight);
  triangle(penTipX, penTipY, penTipX2, penTipY2, penTipX3, penTipY3);
  fill(resetWhite);
}
//
void selectCircleButton() {
  selectCircleButtonX = selectButtonWidth*2;
  selectCircleButtonY = selectButtonY;
  selectCircleButtonWidth = selectButtonWidth;
  selectCircleButtonHeight = selectButtonHeight;
  selectCircleEllipseX = selectButtonWidth*2.5;
  selectCircleEllipseY = selectButtonHeight*1/2;
  selectCircleEllipseDiameter = selectButtonWidth*0.4;
  //
  rect(selectCircleButtonX, selectCircleButtonY, selectCircleButtonWidth, selectCircleButtonHeight);
  ellipse(selectCircleEllipseX, selectCircleEllipseY, selectCircleEllipseDiameter, selectCircleEllipseDiameter);
}






//void sizeButton() {
//
//}
