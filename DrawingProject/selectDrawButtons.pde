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
  fill(resetWhite);
  //
  if (mouseX> templateButtonX && mouseX< templateButtonX+templateButtonWidth && mouseY> templateButtonY && mouseY< templateButtonY+templateButtonHeight) {
    buttonFill = purple;
  } else {
    buttonFill = blue;
  }//End Hover-over
  fill(buttonFill); //2-colors to start , remember nightMode adds choice
  templateButton();
  templateText();
  fill(resetWhite);
  //
  if (mouseX> resetButtonX && mouseX< resetButtonX+resetButtonWidth && mouseY> resetButtonY && mouseY< resetButtonY+resetButtonHeight) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill); //2-colors to start , remember nightMode adds choice
  resetButton();
  resetText();
  //
  if (mouseX> quitButtonX && mouseX< quitButtonX+quitButtonWidth && mouseY> quitButtonY && mouseY< quitButtonY+quitButtonHeight) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill); //2-colors to start , remember nightMode adds choice
  quitButton();
  quitText();
  fill(resetWhite);
  musicText();
}
