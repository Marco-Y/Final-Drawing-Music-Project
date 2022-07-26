import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Boolean draw=false, selectButtonON=false, selectPenButtonON=false, selectCircleButtonON=false, selectEraserButtonON=false;
int XS=1, S=3, M=5, L=7, XL=9;
//
void setup()
{
  //Display Checker
  //Display Orientation Checker
  //Display and CANVAS Checker
  size(1200, 750); //Landscape (Portrait or Square)
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
  //ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
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
  if ( mouseX>selectButtonX && mouseX<selectButtonX+selectButtonWidth && mouseY>selectButtonY && mouseY<selectButtonY+selectButtonHeight ) selectButtonON = true;
  //
  if ( mouseX>selectPenButtonX && mouseX<selectPenButtonX+selectPenButtonWidth && mouseY>selectPenButtonY && mouseY<selectPenButtonY+selectPenButtonHeight ) {
    selectPenButtonON = true;
    selectCircleButtonON = false;
    selectEraserButtonON = false;
  } //End selectPenButton
  //
  if ( mouseX>selectCircleButtonX && mouseX<selectCircleButtonX+selectCircleButtonWidth && mouseY>selectCircleButtonY && mouseY<selectCircleButtonY+selectCircleButtonHeight ) {
    selectPenButtonON = false;
    selectCircleButtonON = true;
    selectEraserButtonON = false;
  }
  if ( mouseX>selectEraserButtonX && mouseX<selectEraserButtonX+selectEraserButtonWidth && mouseY>selectEraserButtonY && mouseY<selectEraserButtonY+selectEraserButtonHeight ) {
    selectPenButtonON = false;
    selectCircleButtonON = false;
    selectEraserButtonON = true;
  }
}//End mousePressed
//
//End MAIN Program
