//Global Variables
//PFont
PFont timesNewRomanFont;
//String
String selectText = "Select";
String sizeText = "Size of pen";
String selectPenText = "Pen";
//float
float selectTextX, selectTextY, selectTextWidth, selectTextHeight;
float selectPenTextX, selectPenTextY, selectPenTextWidth, selectPenTextHeight;
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
void selectPenText() {
  selectPenTextX = selectPenButtonX;
  selectPenTextY = selectPenButtonY;
  selectPenTextWidth = selectPenButtonWidth;
  selectPenTextHeight = selectPenButtonHeight;
  //
  fill(defaultGrey);
  textAlign(CENTER,CENTER);
  textFont(timesNewRomanFont, 20);
  text(selectPenText, selectPenTextX, selectPenTextY, selectPenTextWidth, selectPenTextHeight);
}
