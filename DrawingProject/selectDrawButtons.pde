 void selectDrawButtons() {
  if (mouseX>selectButtonX && mouseX<selectButtonX+selectButtonWidth && mouseY>selectButtonY && mouseY<selectButtonY+selectButtonHeight) {
    buttonFill = pink;
  } else {
    buttonFill = red;
  }
  fill(buttonFill);
  selectButton();
  selectText();
  //
  if (mouseX>selectColorButtonX && mouseX<selectColorButtonX+selectColorButtonWidth && mouseY>selectColorButtonY && mouseY<selectColorButtonY+selectColorButtonHeight) {
    buttonFill = orange;
  } else {
    buttonFill = yellow;
  }
  fill(buttonFill);
  selectColorButton();
  selectColorText();
  //
  if (mouseX>sizeButtonX && mouseX<sizeButtonX+sizeButtonWidth && mouseY>sizeButtonY && mouseY<sizeButtonY+sizeButtonHeight) {
    buttonFill = turquoise;
  } else {
    buttonFill = green;
  }
  fill(buttonFill);
  sizeButton();
  sizeText();
 }
