//Global Variables
PFont timesNewRomanFont;
String selectText = "Select";
float selectTextX, selectTextY, selectTextWidth, selectTextHeight;
String sizeText = "Size of pen";
//
void selectText() {
  selectTextX = width*0;
  selectTextY = height*0;
  selectTextWidth = selectButtonWidth;
  selectTextHeight = selectButtonHeight;
  timesNewRomanFont = createFont("TimesNewRomanPSMT", 603);
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(timesNewRomanFont, 20);
  text(selectText, selectTextX, selectTextY, selectTextWidth, selectTextHeight);
  color(resetWhite);
  noLoop();
}
