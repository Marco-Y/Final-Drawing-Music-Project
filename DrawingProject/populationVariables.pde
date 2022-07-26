//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
float selectingSurfaceX, selectingSurfaceY, selectingSurfaceWidth, selectingSurfaceHeight;
//
void populationVariables() {
  //Drawing Surface
  drawingSurfaceX = width*1/2;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*1/2;
  drawingSurfaceHeight = height;
  drawingDiameter = width*1/100;
  //
  selectingSurfaceX *= 0;
  selectingSurfaceY *= 0;
  selectingSurfaceWidth = width*1/2;
  selectingSurfaceHeight = height;
  //
}//End populationVariables
