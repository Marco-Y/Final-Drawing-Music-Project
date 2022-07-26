import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Boolean draw=false, selectButtonON=false, selectPenButtonON=false, selectCircleButtonON=false;
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
  }
  if (selectPenButtonON=true) {
    if ( draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
      line (mouseX, mouseY, pmouseX, pmouseY);
      fill(defaultGrey);
      rect( selectingSurfaceX, selectingSurfaceY, selectingSurfaceWidth, selectingSurfaceHeight );
      fill(resetWhite);
      selectButton();
      selectText();
    }
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
  if ( mouseX>selectButtonX && mouseX<selectButtonX+selectButtonWidth && mouseY>selectButtonY && mouseY<selectButtonY+selectButtonHeight ) {
    if ( selectButtonON == true ) {
      selectButtonON = false;
    } else {
      selectButtonON = true;
    }
  } //End selectButton
  //
  if ( mouseX>selectPenButtonX && mouseX<selectPenButtonX+selectPenButtonWidth && mouseY>selectPenButtonY && mouseY<selectPenButtonY+selectPenButtonHeight ) {
    if ( selectPenButtonON == true ) {
      selectPenButtonON = false;
    } else {
      selectPenButtonON = true;
    }
  } //End selectPenButton
  //
  if ( mouseX>selectCircleButtonX && mouseX<selectCircleButtonX+selectCircleButtonWidth && mouseY>selectCircleButtonY && mouseY<selectCircleButtonY+selectCircleButtonHeight ) {
    if ( selectCircleButtonON == true ) {
      selectCircleButtonON = false;
    } else {
      selectCircleButtonON = true;
    }
  }
}//End mousePressed
//
//End MAIN Program
