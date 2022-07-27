//Color Palette Code
void selectColorIfStatements() {
  if ( selectGreyButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    stroke(defaultGrey);
    fill(defaultGrey);
  }
  if ( selectBlackButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    stroke(black);
    fill(black);
  }
  if ( selectBrownButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    stroke(brown);
    fill(brown);
  }
  if ( selectRedButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    stroke(red);
    fill(red);
  }
  if ( selectYellowButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    stroke(yellow);
    fill(yellow);
  }
  if ( selectGreenButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    stroke(green);
    fill(green);
  }
  if ( selectTurquoiseButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    stroke(turquoise);
    fill(turquoise);
  }
  if ( selectCyanButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    stroke(cyan);
    fill(cyan);
  }
  if ( selectBlueButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    stroke(blue);
    fill(blue);
  }
  if ( selectPurpleButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    stroke(purple);
    fill(purple);
  }
  if ( selectPinkButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    stroke(pink);
    fill(pink);
  }
  if ( selectOrangeButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    stroke(orange);
    fill(orange);
  }
}
//
//
//
//
//
void selectColorSoundEffects() {
  if ( mouseX>selectGreyButtonX && mouseX<selectGreyButtonX+selectGreyButtonWidth && mouseY>selectGreyButtonY && mouseY<selectGreyButtonY+selectGreyButtonHeight ) {
    soundEffect10.play();
  } else {
    soundEffect10.pause();
    soundEffect10.rewind();
  }
  //
  if ( mouseX>selectBlackButtonX && mouseX<selectBlackButtonX+selectBlackButtonWidth && mouseY>selectBlackButtonY && mouseY<selectBlackButtonY+selectBlackButtonHeight ) {
    soundEffect11.play();
  } else {
    soundEffect11.pause();
    soundEffect11.rewind();
  }
  //
  if ( mouseX>selectBrownButtonX && mouseX<selectBrownButtonX+selectBrownButtonWidth && mouseY>selectBrownButtonY && mouseY<selectBrownButtonY+selectBrownButtonHeight ) {
    soundEffect12.play();
  } else {
    soundEffect12.pause();
    soundEffect12.rewind();
  }
  //
  if ( mouseX>selectRedButtonX && mouseX<selectRedButtonX+selectRedButtonWidth && mouseY>selectRedButtonY && mouseY<selectRedButtonY+selectRedButtonHeight ) {
    soundEffect13.play();
  } else {
    soundEffect13.pause();
    soundEffect13.rewind();
  }
  //
  if ( mouseX>selectYellowButtonX && mouseX<selectYellowButtonX+selectYellowButtonWidth && mouseY>selectYellowButtonY && mouseY<selectYellowButtonY+selectYellowButtonHeight ) {
    soundEffect14.play();
  } else {
    soundEffect14.pause();
    soundEffect14.rewind();
  }
  //
  if ( mouseX>selectGreenButtonX && mouseX<selectGreenButtonX+selectGreenButtonWidth && mouseY>selectGreenButtonY && mouseY<selectGreenButtonY+selectGreenButtonHeight ) {
    soundEffect15.play();
  } else {
    soundEffect15.pause();
    soundEffect15.rewind();
  }
  //
  if ( mouseX>selectTurquoiseButtonX && mouseX<selectTurquoiseButtonX+selectTurquoiseButtonWidth && mouseY>selectTurquoiseButtonY && mouseY<selectTurquoiseButtonY+selectTurquoiseButtonHeight ) {
    soundEffect16.play();
  } else {
    soundEffect16.pause();
    soundEffect16.rewind();
  }
  //
  if ( mouseX>selectCyanButtonX && mouseX<selectCyanButtonX+selectCyanButtonWidth && mouseY>selectCyanButtonY && mouseY<selectCyanButtonY+selectCyanButtonHeight ) {
    soundEffect17.play();
  } else {
    soundEffect17.pause();
    soundEffect17.rewind();
  }
  //
  if ( mouseX>selectBlueButtonX && mouseX<selectBlueButtonX+selectBlueButtonWidth && mouseY>selectBlueButtonY && mouseY<selectBlueButtonY+selectBlueButtonHeight ) {
    soundEffect18.play();
  } else {
    soundEffect18.pause();
    soundEffect18.rewind();
  }
  //
  if ( mouseX>selectPurpleButtonX && mouseX<selectPurpleButtonX+selectPurpleButtonWidth && mouseY>selectPurpleButtonY && mouseY<selectPurpleButtonY+selectPurpleButtonHeight ) {
    soundEffect19.play();
  } else {
    soundEffect19.pause();
    soundEffect19.rewind();
  }
  //
  if ( mouseX>selectPinkButtonX && mouseX<selectPinkButtonX+selectPinkButtonWidth && mouseY>selectPinkButtonY && mouseY<selectPinkButtonY+selectPinkButtonHeight ) {
    soundEffect20.play();
  } else {
    soundEffect20.pause();
    soundEffect20.rewind();
  }
  //
  if ( mouseX>selectOrangeButtonX && mouseX<selectOrangeButtonX+selectOrangeButtonWidth && mouseY>selectOrangeButtonY && mouseY<selectOrangeButtonY+selectOrangeButtonHeight ) {
    soundEffect21.play();
  } else {
    soundEffect21.pause();
    soundEffect21.rewind();
  }
}
