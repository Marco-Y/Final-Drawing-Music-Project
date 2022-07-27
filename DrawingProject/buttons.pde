//Global Variables
float selectButtonX, selectButtonY, selectButtonWidth, selectButtonHeight;
float selectPenButtonX, selectPenButtonY, selectPenButtonWidth, selectPenButtonHeight;
float penRectX, penRectY, penRectWidth, penRectHeight;
float penTipX, penTipY, penTipX2, penTipY2, penTipX3, penTipY3;
float selectCircleButtonX, selectCircleButtonY, selectCircleButtonWidth, selectCircleButtonHeight;
float selectCircleEllipseX, selectCircleEllipseY, selectCircleEllipseDiameter;
float selectEraserButtonX, selectEraserButtonY, selectEraserButtonWidth, selectEraserButtonHeight;
float selectEraserShapeX1, selectEraserShapeY1, selectEraserShapeWidth1, selectEraserShapeHeight1;
float selectEraserShapeX2, selectEraserShapeY2, selectEraserShapeWidth2, selectEraserShapeHeight2;
//
float selectColorButtonX, selectColorButtonY, selectColorButtonWidth, selectColorButtonHeight;
float colorEllipseDiameter;
float selectGreyButtonX, selectGreyButtonY, selectGreyButtonWidth, selectGreyButtonHeight;
float selectGreyEllipseX, selectGreyEllipseY;
float selectBlackButtonX, selectBlackButtonY, selectBlackButtonWidth, selectBlackButtonHeight;
float selectBlackEllipseX, selectBlackEllipseY;
float selectBrownButtonX, selectBrownButtonY, selectBrownButtonWidth, selectBrownButtonHeight;
float selectBrownEllipseX, selectBrownEllipseY;
float selectRedButtonX, selectRedButtonY, selectRedButtonWidth, selectRedButtonHeight;
float selectRedEllipseX, selectRedEllipseY;
float selectYellowButtonX, selectYellowButtonY, selectYellowButtonWidth, selectYellowButtonHeight;
float selectYellowEllipseX, selectYellowEllipseY;
float selectGreenButtonX, selectGreenButtonY, selectGreenButtonWidth, selectGreenButtonHeight;
float selectGreenEllipseX, selectGreenEllipseY;
float selectTurquoiseButtonX, selectTurquoiseButtonY, selectTurquoiseButtonWidth, selectTurquoiseButtonHeight;
float selectTurquoiseEllipseX, selectTurquoiseEllipseY;
float selectCyanButtonX, selectCyanButtonY, selectCyanButtonWidth, selectCyanButtonHeight;
float selectCyanEllipseX, selectCyanEllipseY;
float selectBlueButtonX, selectBlueButtonY, selectBlueButtonWidth, selectBlueButtonHeight;
float selectBlueEllipseX, selectBlueEllipseY;
float selectPurpleButtonX, selectPurpleButtonY, selectPurpleButtonWidth, selectPurpleButtonHeight;
float selectPurpleEllipseX, selectPurpleEllipseY;
float selectPinkButtonX, selectPinkButtonY, selectPinkButtonWidth, selectPinkButtonHeight;
float selectPinkEllipseX, selectPinkEllipseY;
float selectOrangeButtonX, selectOrangeButtonY, selectOrangeButtonWidth, selectOrangeButtonHeight;
float selectOrangeEllipseX, selectOrangeEllipseY;
//
//Size Buttons
//
float sizeButtonX, sizeButtonY, sizeButtonWidth, sizeButtonHeight;
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
  stroke(black);
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
  stroke(black);
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
  stroke(black);
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
  selectGreyButtonX = selectColorButtonWidth;
  selectGreyButtonY = selectColorButtonY;
  selectGreyButtonWidth = selectColorButtonWidth*1/2;
  selectGreyButtonHeight = selectColorButtonHeight*1/2;
  selectGreyEllipseX = selectColorButtonWidth+selectColorButtonWidth*1/4;
  selectGreyEllipseY = selectColorButtonY+selectColorButtonHeight*1/4;
  colorEllipseDiameter = selectColorButtonWidth*1/4;
  //
  stroke(black);
  fill(resetWhite);
  rect(selectGreyButtonX, selectGreyButtonY, selectGreyButtonWidth, selectGreyButtonHeight);
  fill(defaultGrey);
  ellipse(selectGreyEllipseX, selectGreyEllipseY, colorEllipseDiameter, colorEllipseDiameter);
  fill(resetWhite);
}
//
void selectBlackButton() {
  selectBlackButtonX = selectColorButtonWidth+selectGreyButtonWidth;
  selectBlackButtonY = selectGreyButtonY;
  selectBlackButtonWidth = selectGreyButtonWidth;
  selectBlackButtonHeight = selectGreyButtonHeight;
  selectBlackEllipseX = selectColorButtonWidth+selectGreyButtonWidth*3/2;
  selectBlackEllipseY = selectGreyEllipseY;
  //
  stroke(black);
  fill(resetWhite);
  rect(selectBlackButtonX, selectBlackButtonY, selectBlackButtonWidth, selectBlackButtonHeight);
  fill(black);
  ellipse(selectBlackEllipseX, selectBlackEllipseY, colorEllipseDiameter, colorEllipseDiameter);
}
//
void selectBrownButton() {
  selectBrownButtonX = selectColorButtonWidth*2;
  selectBrownButtonY = selectColorButtonY;
  selectBrownButtonWidth = selectColorButtonWidth*1/2;
  selectBrownButtonHeight = selectColorButtonHeight*1/2;
  selectBrownEllipseX = selectColorButtonWidth*2+selectColorButtonWidth*1/4;
  selectBrownEllipseY = selectColorButtonY+selectColorButtonHeight*1/4;
  //
  stroke(black);
  fill(resetWhite);
  rect(selectBrownButtonX, selectBrownButtonY, selectBrownButtonWidth, selectBrownButtonHeight);
  fill(brown);
  ellipse(selectBrownEllipseX, selectBrownEllipseY, colorEllipseDiameter, colorEllipseDiameter);
  fill(resetWhite);
}
//
void selectRedButton() {
  selectRedButtonX = selectColorButtonWidth*2+selectGreyButtonWidth;
  selectRedButtonY = selectGreyButtonY;
  selectRedButtonWidth = selectGreyButtonWidth;
  selectRedButtonHeight = selectGreyButtonHeight;
  selectRedEllipseX = selectColorButtonWidth*2+selectGreyButtonWidth*3/2;
  selectRedEllipseY = selectGreyEllipseY;
  //
  stroke(black);
  fill(resetWhite);
  rect(selectRedButtonX, selectRedButtonY, selectRedButtonWidth, selectRedButtonHeight);
  fill(red);
  ellipse(selectRedEllipseX, selectRedEllipseY, colorEllipseDiameter, colorEllipseDiameter);
  fill(resetWhite);
}
//
void selectYellowButton() {
  selectYellowButtonX = selectColorButtonWidth*3;
  selectYellowButtonY = selectGreyButtonY;
  selectYellowButtonWidth = selectGreyButtonWidth;
  selectYellowButtonHeight = selectGreyButtonHeight;
  selectYellowEllipseX = selectColorButtonWidth*3+selectColorButtonWidth*1/4;
  selectYellowEllipseY = selectGreyEllipseY;
  //
  stroke(black);
  fill(resetWhite);
  rect(selectYellowButtonX, selectYellowButtonY, selectYellowButtonWidth, selectYellowButtonHeight);
  fill(yellow);
  ellipse(selectYellowEllipseX, selectYellowEllipseY, colorEllipseDiameter, colorEllipseDiameter);
  fill(resetWhite);
}
//
void selectGreenButton() {
  selectGreenButtonX = selectColorButtonWidth*3+selectGreyButtonWidth;
  selectGreenButtonY = selectGreyButtonY;
  selectGreenButtonWidth = selectGreyButtonWidth;
  selectGreenButtonHeight = selectGreyButtonHeight;
  selectGreenEllipseX = selectColorButtonWidth*3+selectGreyButtonWidth*3/2;
  selectGreenEllipseY = selectGreyEllipseY;
  //
  stroke(black);
  fill(resetWhite);
  rect(selectGreenButtonX, selectGreenButtonY, selectGreenButtonWidth, selectGreenButtonHeight);
  fill(green);
  ellipse(selectGreenEllipseX, selectGreenEllipseY, colorEllipseDiameter, colorEllipseDiameter);
  fill(resetWhite);
}
//
void selectTurquoiseButton() {
  selectTurquoiseButtonX = selectGreyButtonX;
  selectTurquoiseButtonY = selectColorButtonY+selectColorButtonHeight*1/2;
  selectTurquoiseButtonWidth = selectColorButtonWidth*1/2;
  selectTurquoiseButtonHeight = selectColorButtonHeight*1/2;
  selectTurquoiseEllipseX = selectColorButtonWidth+selectColorButtonWidth*1/4;
  selectTurquoiseEllipseY = selectColorButtonY+selectColorButtonHeight*3/4;
  //
  stroke(black);
  fill(resetWhite);
  rect(selectTurquoiseButtonX, selectTurquoiseButtonY, selectTurquoiseButtonWidth, selectTurquoiseButtonHeight);
  fill(turquoise);
  ellipse(selectTurquoiseEllipseX, selectTurquoiseEllipseY, colorEllipseDiameter, colorEllipseDiameter);
  fill(resetWhite);
}
//
void selectCyanButton() {
  selectCyanButtonX = selectBlackButtonX;
  selectCyanButtonY = selectTurquoiseButtonY;
  selectCyanButtonWidth = selectTurquoiseButtonWidth;
  selectCyanButtonHeight = selectTurquoiseButtonHeight;
  selectCyanEllipseX = selectColorButtonWidth+selectTurquoiseButtonWidth*3/2;
  selectCyanEllipseY = selectTurquoiseEllipseY;
  //
  stroke(black);
  fill(resetWhite);
  rect(selectCyanButtonX, selectCyanButtonY, selectCyanButtonWidth, selectCyanButtonHeight);
  fill(cyan);
  ellipse(selectCyanEllipseX, selectCyanEllipseY, colorEllipseDiameter, colorEllipseDiameter);
  fill(resetWhite);
}
//
void selectBlueButton() {
  selectBlueButtonX = selectBrownButtonX;
  selectBlueButtonY = selectTurquoiseButtonY;
  selectBlueButtonWidth = selectTurquoiseButtonWidth;
  selectBlueButtonHeight = selectTurquoiseButtonHeight;
  selectBlueEllipseX = selectBrownEllipseX;
  selectBlueEllipseY = selectTurquoiseEllipseY;
  //
  stroke(black);
  fill(resetWhite);
  rect(selectBlueButtonX, selectBlueButtonY, selectBlueButtonWidth, selectBlueButtonHeight);
  fill(blue);
  ellipse(selectBlueEllipseX, selectBlueEllipseY, colorEllipseDiameter, colorEllipseDiameter);
  fill(resetWhite);
}
//
void selectPurpleButton() {
  selectPurpleButtonX = selectRedButtonX;
  selectPurpleButtonY = selectTurquoiseButtonY;
  selectPurpleButtonWidth = selectTurquoiseButtonWidth;
  selectPurpleButtonHeight = selectTurquoiseButtonHeight;
  selectPurpleEllipseX = selectRedEllipseX;
  selectPurpleEllipseY = selectTurquoiseEllipseY;
  //
  stroke(black);
  fill(resetWhite);
  rect(selectPurpleButtonX, selectPurpleButtonY, selectPurpleButtonWidth, selectPurpleButtonHeight);
  fill(purple);
  ellipse(selectPurpleEllipseX, selectPurpleEllipseY, colorEllipseDiameter, colorEllipseDiameter);
  fill(resetWhite);
}
//
void selectPinkButton() {
  selectPinkButtonX = selectYellowButtonX;
  selectPinkButtonY = selectTurquoiseButtonY;
  selectPinkButtonWidth = selectTurquoiseButtonWidth;
  selectPinkButtonHeight = selectTurquoiseButtonHeight;
  selectPinkEllipseX = selectYellowEllipseX;
  selectPinkEllipseY = selectTurquoiseEllipseY;
  //
  stroke(black);
  fill(resetWhite);
  rect(selectPinkButtonX, selectPinkButtonY, selectPinkButtonWidth, selectPinkButtonHeight);
  fill(pink);
  ellipse(selectPinkEllipseX, selectPinkEllipseY, colorEllipseDiameter, colorEllipseDiameter);
  fill(resetWhite);
}
//
void selectOrangeButton() {
  selectOrangeButtonX = selectGreenButtonX;
  selectOrangeButtonY = selectTurquoiseButtonY;
  selectOrangeButtonWidth = selectTurquoiseButtonWidth;
  selectOrangeButtonHeight = selectTurquoiseButtonHeight;
  selectOrangeEllipseX = selectGreenEllipseX;
  selectOrangeEllipseY = selectTurquoiseEllipseY;
  //
  stroke(black);
  fill(resetWhite);
  rect(selectOrangeButtonX, selectOrangeButtonY, selectOrangeButtonWidth, selectOrangeButtonHeight);
  fill(orange);
  ellipse(selectOrangeEllipseX, selectOrangeEllipseY, colorEllipseDiameter, colorEllipseDiameter);
  fill(resetWhite);
}
//
void sizeButton() {
  sizeButtonX = selectButtonX;
  sizeButtonY = selectButtonHeight*2;
  sizeButtonWidth = selectButtonWidth;
  sizeButtonHeight = selectButtonHeight;
  //
  rect(sizeButtonX, sizeButtonY, sizeButtonWidth, sizeButtonHeight);
}
