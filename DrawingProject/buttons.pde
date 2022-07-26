//Global Variables
float selectButtonX, selectButtonY, selectButtonWidth, selectButtonHeight;
float selectPenButtonX, selectPenButtonY, selectPenButtonWidth, selectPenButtonHeight;
float sizeButtonX, sizeButtonY, sizeButtonWidth, sizeButtonHeight;
//
void selectButton() {
  selectButtonX = width*0;
  selectButtonY = height*0;
  selectButtonWidth = selectingSurfaceWidth*1/5;
  selectButtonHeight = selectingSurfaceHeight*1/7;
  //rect(selectButtonX, selectButtonY, selectButtonWidth, selectButtonHeight);
}

void selectPenButton() {
  selectPenButtonX = selectingSurfaceWidth*1/5;
  selectPenButtonY = selectButtonY;
  selectPenButtonWidth = selectButtonWidth;
  selectPenButtonHeight = selectButtonHeight;
  //rect(selectPenButtonX, selectPenButtonY, selectPenButtonWidth, selectPenButtonHeight);
}
  








//void sizeButton() {
  //
//}
