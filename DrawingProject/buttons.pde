//Global Variables
float selectButtonX, selectButtonY, selectButtonWidth, selectButtonHeight;
float selectPenButtonX, selectPenButtonY, selectPenButtonWidth, selectPenButtonHeight;
float penRectX, penRectY, penRectWidth, penRectHeight;
float sizeButtonX, sizeButtonY, sizeButtonWidth, sizeButtonHeight;
float penTipX, penTipY, penTipX2, penTipY2, penTipX3, penTipY3;
float selectCircleButtonX, selectCircleButtonY, selectCircleButtonWidth, selectCircleButtonHeight;
float selectCircleEllipseX, selectCircleEllipseY, selectCircleEllipseDiameter;
float selectEraserButtonX, selectEraserButtonY, selectEraserButtonWidth, selectEraserButtonHeight;
float selectEraserShapeX1, selectEraserShapeY1, selectEraserShapeWidth1, selectEraserShapeHeight1;
float selectEraserShapeX2, selectEraserShapeY2, selectEraserShapeWidth2, selectEraserShapeHeight2;
float selectColorButtonX, selectColorButtonY, selectColorButtonWidth, selectColorButtonHeight;
float selectGreyButtonX, selectGreyButtonY, selectGreyButtonWidth, selectGreyButtonHeight;
float selectWhiteButtonX, selectWhiteButtonY, selectWhiteButtonWidth, selectWhiteButtonHeight;
float selectGreyEllipseX, selectGreyEllipseY, selectGreyEllipseDiameter;

//
//Select Pen/Circle Stamp/Eraser buttons
//
void selectButton() {
  selectButtonX = width*0;
  selectButtonY = height*0;
  selectButtonWidth = selectingSurfaceWidth*1/5;
  selectButtonHeight = selectingSurfaceHeight*1/7;
  //
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
//
void selectEraserButton() {
  selectEraserButtonX = selectButtonWidth*3;
  selectEraserButtonY = selectButtonY;
  selectEraserButtonWidth = selectButtonWidth;
  selectEraserButtonHeight = selectButtonHeight;
  selectEraserShapeX1 = selectButtonWidth*3.3;
  selectEraserShapeY1 = selectButtonHeight*1/5;
  selectEraserShapeWidth1 = selectButtonWidth*2/5;
  selectEraserShapeHeight1 = selectButtonHeight*1/8;
  selectEraserShapeX2 = selectEraserShapeX1;
  selectEraserShapeY2 = selectButtonHeight*13/40;
  selectEraserShapeWidth2 = selectEraserShapeWidth1;
  selectEraserShapeHeight2 = selectButtonHeight*19/40;
  //
  rect(selectEraserButtonX, selectEraserButtonY, selectEraserButtonWidth, selectEraserButtonHeight);
  rect(selectEraserShapeX1, selectEraserShapeY1, selectEraserShapeWidth1, selectEraserShapeHeight1);
  fill(defaultGrey);
  rect(selectEraserShapeX2, selectEraserShapeY2, selectEraserShapeWidth2, selectEraserShapeHeight2);
  fill(resetWhite);
}
//
//Select Color buttons
//
void selectColorButton() {
  selectColorButtonX = selectButtonX;
  selectColorButtonY = selectButtonHeight;
  selectColorButtonWidth = selectButtonWidth;
  selectColorButtonHeight = selectButtonHeight;
  //
  rect(selectColorButtonX, selectColorButtonY, selectColorButtonWidth, selectColorButtonHeight);
}
//
void selectGreyButton() {
  selectGreyEllipseX = selectColorButtonWidth+selectColorButtonWidth*1/4;
  selectGreyEllipseY = selectColorButtonY+selectColorButtonHeight*1/4;
  selectGreyEllipseDiameter = selectColorButtonWidth*1/4;
  fill(defaultGrey);
  ellipse(selectGreyEllipseX, selectGreyEllipseY, selectGreyEllipseDiameter, selectGreyEllipseDiameter);
  fill(resetWhite);
}
/*
void selectWhiteButton() {
  selectWhiteButtonX = selectGreyButtonX+selectGreyButtonWidth*1/2;
  selectWhiteButtonY = selectGreyEllipseY;
  selectWhiteButtonWidth = selectGreyEllipseDiameter;
  fill(resetWhite);
  rect(selectWhiteButtonX, selectWhiteButtonY, selectWhiteButtonWidth, selectWhiteButtonHeight);
}


//void sizeButton() {
//
//}*/
