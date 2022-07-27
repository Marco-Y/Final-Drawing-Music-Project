//Global Variables
PFont timesNewRomanFont;
String selectText = "Select";
String sizeText = "Size";
String selectColorText = "Color";
String resetText = "Reset";
String quitText = "Quit";
float selectTextX, selectTextY, selectTextWidth, selectTextHeight;
float selectColorTextX, selectColorTextY, selectColorTextWidth, selectColorTextHeight;
float sizeTextX, sizeTextY, sizeTextWidth, sizeTextHeight;
float resetTextX, resetTextY, resetTextWidth, resetTextHeight;
float quitTextX, quitTextY, quitTextWidth, quitTextHeight;
//
void selectText() {
  selectTextX = width*0;
  selectTextY = height*0;
  selectTextWidth = selectButtonWidth;
  selectTextHeight = selectButtonHeight;
  timesNewRomanFont = createFont("TimesNewRomanPSMT", 603);
  //
  fill(black);
  textAlign(CENTER,CENTER);
  textFont(timesNewRomanFont, 20);
  text(selectText, selectTextX, selectTextY, selectTextWidth, selectTextHeight);
  fill(resetWhite);
}
//
void selectColorText() {
  selectColorTextX = selectColorButtonX;
  selectColorTextY = selectColorButtonY;
  selectColorTextWidth = selectColorButtonWidth;
  selectColorTextHeight = selectColorButtonHeight;
  //
  fill(black);
  textAlign(CENTER,CENTER);
  textFont(timesNewRomanFont, 20);
  text(selectColorText, selectColorTextX, selectColorTextY, selectColorTextWidth, selectColorTextHeight);
}
//
void sizeText() {
  sizeTextX = sizeButtonX;
  sizeTextY = sizeButtonY;
  sizeTextWidth = sizeButtonWidth;
  sizeTextHeight = sizeButtonHeight;
  //
  fill(black);
  textAlign(CENTER,CENTER);
  textFont(timesNewRomanFont, 20);
  text(sizeText, sizeTextX, sizeTextY, sizeTextWidth, sizeTextHeight);
}
//
void resetText() {
  resetTextX = resetButtonX;
  resetTextY = resetButtonY;
  resetTextWidth = resetButtonWidth;
  resetTextHeight = resetButtonHeight;
  //
  fill(black);
  textAlign(CENTER,CENTER);
  textFont(timesNewRomanFont, 40);
  text(resetText, resetTextX, resetTextY, resetTextWidth, resetTextHeight);
}
//
void quitText() {
  quitTextX = quitButtonX;
  quitTextY = quitButtonY;
  quitTextWidth = quitButtonWidth;
  quitTextHeight = quitButtonHeight;
  //
  fill(black);
  textAlign(CENTER,CENTER);
  textFont(timesNewRomanFont, 40);
  text(quitText, quitTextX, quitTextY, quitTextWidth, quitTextHeight);
}
