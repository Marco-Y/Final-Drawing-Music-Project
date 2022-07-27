//Global Variables
//PFont
PFont timesNewRomanFont;
//String
String selectText = "Select";
String sizeText = "Size";
String selectColorText = "Color";
//float
float selectTextX, selectTextY, selectTextWidth, selectTextHeight;
float selectColorTextX, selectColorTextY, selectColorTextWidth, selectColorTextHeight;
float sizeTextX, sizeTextY, sizeTextWidth, sizeTextHeight;
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
