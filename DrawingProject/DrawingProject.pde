import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Boolean draw=false, selectButtonON=false, selectPenButtonON=false, selectCircleButtonON=false, selectEraserButtonON=false, selectColorButtonON=false;
int XXS=1, XS=3, S=5, M=7, L=9, XL=12, XXL=15;
//
void setup()
{
  //Display Checker
  //Display Orientation Checker
  //Display and CANVAS Checker
  size(1200, 750); //Landscape (Portrait or Square)
  println ("width:", width, "\t height:", height, "\t displayWidth:", displayWidth, "\t\t displayHeight:", displayHeight);
  int appWidth = width;
  int appHeight = height;
  if ( width > displayWidth || height > displayHeight ) {
    //CANVAS is too Big
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
  selectButton();
  selectText();
  selectColorButton();
  selectColorText();
  //
  if ( selectButtonON == true && mouseX>selectButtonX && mouseX<selectButtonX+selectButtonWidth && mouseY>selectButtonY && mouseY<selectButtonY+selectButtonHeight ) {
    fill(resetWhite);
    selectPenButton();
    selectCircleButton();
    selectEraserButton();
  }
  if ( selectPenButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    line (mouseX, mouseY, pmouseX, pmouseY); //Pen drawing tool
    fill(defaultGrey);
    rect( selectingSurfaceX, selectingSurfaceY, selectingSurfaceWidth, selectingSurfaceHeight );
    fill(resetWhite);
    selectButton();
    selectText();
  }
  if ( selectCircleButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Circle Drawing Tool
    fill(defaultGrey);
    rect( selectingSurfaceX, selectingSurfaceY, selectingSurfaceWidth, selectingSurfaceHeight );
    fill(resetWhite);
    selectButton();
    selectText();
  }
  if ( selectEraserButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    fill(resetWhite);
    noStroke();
    ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Circle Erasing Tool
    fill(defaultGrey);
    rect( selectingSurfaceX, selectingSurfaceY, selectingSurfaceWidth, selectingSurfaceHeight );
    fill(resetWhite);
    selectButton();
    selectText();
    stroke(1);
  }
  if ( selectColorButtonON==true && mouseX>selectColorButtonX && mouseX<selectColorButtonX+selectColorButtonWidth && mouseY>selectColorButtonY && mouseY<selectColorButtonY+selectColorButtonHeight ) {
    selectGreyButton();
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
    selectPenButtonON = true;
    selectCircleButtonON = false;
    selectEraserButtonON = false;
  } //End selectPenButtonON
  //
  if ( mouseX>selectCircleButtonX && mouseX<selectCircleButtonX+selectCircleButtonWidth && mouseY>selectCircleButtonY && mouseY<selectCircleButtonY+selectCircleButtonHeight ) {
    selectPenButtonON = false;
    selectCircleButtonON = true;
    selectEraserButtonON = false;
  } //End selectCircleButtonON
  //
  if ( mouseX>selectEraserButtonX && mouseX<selectEraserButtonX+selectEraserButtonWidth && mouseY>selectEraserButtonY && mouseY<selectEraserButtonY+selectEraserButtonHeight ) {
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
}//End mousePressed
//
//End MAIN Program
