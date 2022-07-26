 void selectDrawButtons() {
  if (mouseX>selectButtonX && mouseX<selectButtonX+selectButtonWidth && mouseY>selectButtonY && mouseY<selectButtonY+selectButtonHeight) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }
  fill(buttonFill);
  selectButton();
  selectText();
  if (mouseX>selectColorButtonX && mouseX<selectColorButtonX+selectColorButtonWidth && mouseY>selectColorButtonY && mouseY<selectColorButtonY+selectColorButtonHeight) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }
  fill(buttonFill);
  selectColorButton();
  selectColorText();
 }
