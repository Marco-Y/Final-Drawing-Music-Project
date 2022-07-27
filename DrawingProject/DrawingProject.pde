import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer soundEffect1, soundEffect2, soundEffect3, soundEffect4, soundEffect5;
Boolean draw=false;
Boolean selectButtonON=false, selectPenButtonON=false, selectCircleButtonON=false, selectEraserButtonON=false;
Boolean selectColorButtonON=false;
Boolean selectGreyButtonON=false, selectBlackButtonON=false, selectBrownButtonON=false, selectRedButtonON=false, selectYellowButtonON=false, selectGreenButtonON=false;
Boolean selectTurquoiseButtonON=false, selectCyanButtonON=false, selectBlueButtonON=false, selectPurpleButtonON=false, selectPinkButtonON=false, selectOrangeButtonON=false;
int XS=1, S=4, M=7, L=10, XL=13;
//
void setup()
{
  //Display Checker
  //Display Orientation Checker
  //Display and CANVAS Checker
  size(1200, 750); //Landscape (Portrait or Square)
  minim = new Minim(this);
  soundEffect1 = minim.loadFile("Cartoon Boing.mp3"); //used as error sound
  soundEffect2 = minim.loadFile("Wooden Bat Tapping Home Plate.mp3"); //Circle Stamping Sound
  soundEffect3 = minim.loadFile("Dry Off with Towel.mp3"); //Eraser Sound
  soundEffect4 = minim.loadFile("Pen Clicking .mp3"); //Pen Select Sound
  soundEffect5 = minim.loadFile("Swoosh.mp3"); //Color Select Sound
  //
  println ("width:", width, "\t height:", height, "\t displayWidth:", displayWidth, "\t\t displayHeight:", displayHeight);
  int appWidth = width;
  int appHeight = height;
  if ( width > displayWidth || height > displayHeight ) {
    //CANVAS is too Big
    soundEffect1.play();
    appWidth = displayWidth;
    appHeight = displayHeight;
    println("CANVAS needs to be readjusted to your monitor");
  } else {
    println("CANVAS is good to go.");
  }//End CANVAS in Display Checker
  //
  String ls="Landscape or Square", p="portrait", DO="Display Orientation:", instruct="Please turn your phone";
  String orientation = ( appWidth >= appHeight ) ? ls : p; //Ternary Operator, repeats the IF-Else structure to populate a variable
  println( DO, orientation );
  if ( orientation==ls ) { //Test for chosen display orientation
    println("Display Orientation is good to go");
  } else {
    soundEffect1.play();
    appWidth *= 0; //assignment operator , works like appWidth = appWidth*0
    appHeight *= 0;
    println(instruct);
  }
  //
  populationVariables();
  //
  fill(defaultGrey);
  rect( selectingSurfaceX, selectingSurfaceY, selectingSurfaceWidth, selectingSurfaceHeight );
  fill(resetWhite);
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
  //
}//End setup
//
void draw()
{
  fill(resetWhite);
  selectDrawButtons();
  fill(resetWhite);
  //
  //Select
  //
  if ( selectButtonON == true && mouseX>selectButtonX && mouseX<selectButtonX+selectButtonWidth && mouseY>selectButtonY && mouseY<selectButtonY+selectButtonHeight ) {
    selectPenButton();
    selectCircleButton();
    selectEraserButton();
  }
  //
  if ( selectPenButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    line (mouseX, mouseY, pmouseX, pmouseY); //Pen drawing tool
    fill(defaultGrey);
    rect( selectingSurfaceX, selectingSurfaceY, selectingSurfaceWidth, selectingSurfaceHeight );
    fill(resetWhite);
    selectDrawButtons();
  }
  //
  if ( selectCircleButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Circle Drawing Tool
    fill(defaultGrey);
    rect( selectingSurfaceX, selectingSurfaceY, selectingSurfaceWidth, selectingSurfaceHeight );
    fill(resetWhite);
    selectDrawButtons();
  }
  //
  if ( selectEraserButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    fill(resetWhite);
    noStroke();
    ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Circle Erasing Tool
    fill(defaultGrey);
    rect( selectingSurfaceX, selectingSurfaceY, selectingSurfaceWidth, selectingSurfaceHeight );
    fill(resetWhite);
    selectDrawButtons();
    stroke(1);
  }
  //
  //Color
  //
  if ( selectColorButtonON==true && mouseX>selectColorButtonX && mouseX<selectColorButtonX+selectColorButtonWidth && mouseY>selectColorButtonY && mouseY<selectColorButtonY+selectColorButtonHeight ) {
    selectGreyButton();
    selectBlackButton();
    selectBrownButton();
    selectRedButton();
    selectYellowButton();
    selectGreenButton();
    selectTurquoiseButton();
    selectCyanButton();
    selectBlueButton();
    selectPurpleButton();
    selectPinkButton();
    selectOrangeButton();
  }
  //
  if (mousePressed==true) {
    if ( mouseX>selectGreyButtonX && mouseX<selectGreyButtonX+selectGreyButtonWidth*6 && mouseY>selectGreyButtonY && mouseY<selectGreyButtonY+selectGreyButtonHeight*2) {
      soundEffect5.play();
    }
  }
  //
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
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed()
{
  if ( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    if ( draw == true ) {
      draw = false;
    } else {
      draw = true;
    }
  } //End drawing tools
  //
  //Select
  //
  if ( mouseX>selectButtonX && mouseX<selectButtonX+selectButtonWidth && mouseY>selectButtonY && mouseY<selectButtonY+selectButtonHeight ) selectButtonON = true;
  //
  if ( mouseX>selectPenButtonX && mouseX<selectPenButtonX+selectPenButtonWidth && mouseY>selectPenButtonY && mouseY<selectPenButtonY+selectPenButtonHeight ) {
    soundEffect4.play();
    selectPenButtonON = true;
    selectCircleButtonON = false;
    selectEraserButtonON = false;
  } //End selectPenButtonON
  //
  if ( mouseX>selectCircleButtonX && mouseX<selectCircleButtonX+selectCircleButtonWidth && mouseY>selectCircleButtonY && mouseY<selectCircleButtonY+selectCircleButtonHeight ) {
    soundEffect2.play();
    selectPenButtonON = false;
    selectCircleButtonON = true;
    selectEraserButtonON = false;
  } //End selectCircleButtonON
  //
  if ( mouseX>selectEraserButtonX && mouseX<selectEraserButtonX+selectEraserButtonWidth && mouseY>selectEraserButtonY && mouseY<selectEraserButtonY+selectEraserButtonHeight ) {
    soundEffect3.play();
    selectPenButtonON = false;
    selectCircleButtonON = false;
    selectEraserButtonON = true;
  } //End selectEraserButtonON
  //
  //Color
  //
  if ( mouseX>selectColorButtonX && mouseX<selectColorButtonX+selectColorButtonWidth && mouseY>selectColorButtonY && mouseY<selectColorButtonY+selectColorButtonHeight ) {
    selectColorButtonON=true;
  }
  //
  if ( mouseX>selectGreyButtonX && mouseX<selectGreyButtonX+selectGreyButtonWidth && mouseY>selectGreyButtonY && mouseY<selectGreyButtonY+selectGreyButtonHeight ) {
    selectGreyButtonON=true;
    selectBlackButtonON=false;
    selectBrownButtonON=false;
    selectRedButtonON=false;
    selectYellowButtonON=false;
    selectGreenButtonON=false;
    selectTurquoiseButtonON=false;
    selectCyanButtonON=false;
    selectBlueButtonON=false;
    selectPurpleButtonON=false;
    selectPinkButtonON=false;
    selectOrangeButtonON=false;
  }
  //
  if ( mouseX>selectBlackButtonX && mouseX<selectBlackButtonX+selectBlackButtonWidth && mouseY>selectBlackButtonY && mouseY<selectBlackButtonY+selectBlackButtonHeight ) {
    selectGreyButtonON=false;
    selectBlackButtonON=true;
    selectBrownButtonON=false;
    selectRedButtonON=false;
    selectYellowButtonON=false;
    selectGreenButtonON=false;
    selectTurquoiseButtonON=false;
    selectCyanButtonON=false;
    selectBlueButtonON=false;
    selectPurpleButtonON=false;
    selectPinkButtonON=false;
    selectOrangeButtonON=false;
  }
  //
  if ( mouseX>selectBrownButtonX && mouseX<selectBrownButtonX+selectBrownButtonWidth && mouseY>selectBrownButtonY && mouseY<selectBrownButtonY+selectBrownButtonHeight ) {
    selectGreyButtonON=false;
    selectBlackButtonON=false;
    selectBrownButtonON=true;
    selectRedButtonON=false;
    selectYellowButtonON=false;
    selectGreenButtonON=false;
    selectTurquoiseButtonON=false;
    selectCyanButtonON=false;
    selectBlueButtonON=false;
    selectPurpleButtonON=false;
    selectPinkButtonON=false;
    selectOrangeButtonON=false;
  }
  //
  if ( mouseX>selectRedButtonX && mouseX<selectRedButtonX+selectRedButtonWidth && mouseY>selectRedButtonY && mouseY<selectRedButtonY+selectRedButtonHeight ) {
    selectGreyButtonON=false;
    selectBlackButtonON=false;
    selectBrownButtonON=false;
    selectRedButtonON=true;
    selectYellowButtonON=false;
    selectGreenButtonON=false;
    selectTurquoiseButtonON=false;
    selectCyanButtonON=false;
    selectBlueButtonON=false;
    selectPurpleButtonON=false;
    selectPinkButtonON=false;
    selectOrangeButtonON=false;
  }
  //
  if ( mouseX>selectYellowButtonX && mouseX<selectYellowButtonX+selectYellowButtonWidth && mouseY>selectYellowButtonY && mouseY<selectYellowButtonY+selectYellowButtonHeight ) {
    selectGreyButtonON=false;
    selectBlackButtonON=false;
    selectBrownButtonON=false;
    selectRedButtonON=false;
    selectYellowButtonON=true;
    selectGreenButtonON=false;
    selectTurquoiseButtonON=false;
    selectCyanButtonON=false;
    selectBlueButtonON=false;
    selectPurpleButtonON=false;
    selectPinkButtonON=false;
    selectOrangeButtonON=false;
  }
  //
  if ( mouseX>selectGreenButtonX && mouseX<selectGreenButtonX+selectGreenButtonWidth && mouseY>selectGreenButtonY && mouseY<selectGreenButtonY+selectGreenButtonHeight ) {
    selectGreyButtonON=false;
    selectBlackButtonON=false;
    selectBrownButtonON=false;
    selectRedButtonON=false;
    selectYellowButtonON=false;
    selectGreenButtonON=true;
    selectTurquoiseButtonON=false;
    selectCyanButtonON=false;
    selectBlueButtonON=false;
    selectPurpleButtonON=false;
    selectPinkButtonON=false;
    selectOrangeButtonON=false;
  }
  //
  if ( mouseX>selectTurquoiseButtonX && mouseX<selectTurquoiseButtonX+selectTurquoiseButtonWidth && mouseY>selectTurquoiseButtonY && mouseY<selectTurquoiseButtonY+selectTurquoiseButtonHeight ) {
    selectGreyButtonON=false;
    selectBlackButtonON=false;
    selectBrownButtonON=false;
    selectRedButtonON=false;
    selectYellowButtonON=false;
    selectGreenButtonON=false;
    selectTurquoiseButtonON=true;
    selectCyanButtonON=false;
    selectBlueButtonON=false;
    selectPurpleButtonON=false;
    selectPinkButtonON=false;
    selectOrangeButtonON=false;
  }
  //
  if ( mouseX>selectCyanButtonX && mouseX<selectCyanButtonX+selectCyanButtonWidth && mouseY>selectCyanButtonY && mouseY<selectCyanButtonY+selectCyanButtonHeight ) {
    selectGreyButtonON=false;
    selectBlackButtonON=false;
    selectBrownButtonON=false;
    selectRedButtonON=false;
    selectYellowButtonON=false;
    selectGreenButtonON=false;
    selectTurquoiseButtonON=false;
    selectCyanButtonON=true;
    selectBlueButtonON=false;
    selectPurpleButtonON=false;
    selectPinkButtonON=false;
    selectOrangeButtonON=false;
  }
  //
  if ( mouseX>selectBlueButtonX && mouseX<selectBlueButtonX+selectBlueButtonWidth && mouseY>selectBlueButtonY && mouseY<selectBlueButtonY+selectBlueButtonHeight ) {
    selectGreyButtonON=false;
    selectBlackButtonON=false;
    selectBrownButtonON=false;
    selectRedButtonON=false;
    selectYellowButtonON=false;
    selectGreenButtonON=false;
    selectTurquoiseButtonON=false;
    selectCyanButtonON=false;
    selectBlueButtonON=true;
    selectPurpleButtonON=false;
    selectPinkButtonON=false;
    selectOrangeButtonON=false;
  }
  //
  if ( mouseX>selectPurpleButtonX && mouseX<selectPurpleButtonX+selectPurpleButtonWidth && mouseY>selectPurpleButtonY && mouseY<selectPurpleButtonY+selectPurpleButtonHeight ) {
    selectGreyButtonON=false;
    selectBlackButtonON=false;
    selectBrownButtonON=false;
    selectRedButtonON=false;
    selectYellowButtonON=false;
    selectGreenButtonON=false;
    selectTurquoiseButtonON=false;
    selectCyanButtonON=false;
    selectBlueButtonON=false;
    selectPurpleButtonON=true;
    selectPinkButtonON=false;
    selectOrangeButtonON=false;
  }
  //
  if ( mouseX>selectPinkButtonX && mouseX<selectPinkButtonX+selectPinkButtonWidth && mouseY>selectPinkButtonY && mouseY<selectPinkButtonY+selectPinkButtonHeight ) {
    selectGreyButtonON=false;
    selectBlackButtonON=false;
    selectBrownButtonON=false;
    selectRedButtonON=false;
    selectYellowButtonON=false;
    selectGreenButtonON=false;
    selectTurquoiseButtonON=false;
    selectCyanButtonON=false;
    selectBlueButtonON=false;
    selectPurpleButtonON=false;
    selectPinkButtonON=true;
    selectOrangeButtonON=false;
  }
  //
  if ( mouseX>selectOrangeButtonX && mouseX<selectOrangeButtonX+selectOrangeButtonWidth && mouseY>selectOrangeButtonY && mouseY<selectOrangeButtonY+selectOrangeButtonHeight ) {
    selectGreyButtonON=false;
    selectBlackButtonON=false;
    selectBrownButtonON=false;
    selectRedButtonON=false;
    selectYellowButtonON=false;
    selectGreenButtonON=false;
    selectTurquoiseButtonON=false;
    selectCyanButtonON=false;
    selectBlueButtonON=false;
    selectPurpleButtonON=false;
    selectPinkButtonON=false;
    selectOrangeButtonON=true;
  }
  //
}//End mousePressed
//
//End MAIN Program
