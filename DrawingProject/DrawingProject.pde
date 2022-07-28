import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer soundEffect1, soundEffect2, soundEffect3, soundEffect4, soundEffect5, soundEffect6, soundEffect7, soundEffect8, soundEffect9;
AudioPlayer soundEffect10, soundEffect11, soundEffect12, soundEffect13, soundEffect14, soundEffect15, soundEffect16, soundEffect17, soundEffect18, soundEffect19, soundEffect20, soundEffect21, soundEffect22;
AudioPlayer song1, song2, song3;
AudioMetaData songMetaData1, songMetaData2, songMetaData3;
//
Boolean draw=false;
Boolean selectButtonON=false, selectPenButtonON=false, selectCircleButtonON=false, selectEraserButtonON=false;
Boolean selectColorButtonON=false;
Boolean selectGreyButtonON=false, selectBlackButtonON=false, selectBrownButtonON=false, selectRedButtonON=false, selectYellowButtonON=false, selectGreenButtonON=false;
Boolean selectTurquoiseButtonON=false, selectCyanButtonON=false, selectBlueButtonON=false, selectPurpleButtonON=false, selectPinkButtonON=false, selectOrangeButtonON=false;
Boolean sizeButtonON=false, sSizeON=false, mSizeON=false, lSizeON=false;
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
  minim = new Minim(this);
  soundEffect1 = minim.loadFile("Cartoon Boing.mp3"); //used as error sound
  soundEffect2 = minim.loadFile("Wooden Bat Tapping Home Plate.mp3"); //Circle Stamping Sound
  soundEffect3 = minim.loadFile("Dry Off with Towel.mp3"); //Eraser Sound
  soundEffect4 = minim.loadFile("Pen Clicking .mp3"); //Pen Select Sound
  soundEffect5 = minim.loadFile("Swoosh.mp3"); //Color Select Sound
  soundEffect6 = minim.loadFile("Winding Alarm Clock.mp3"); //Size Select S Sound
  soundEffect7 = minim.loadFile("Winding Alarm Clock copy.mp3"); //Size Select M Sound
  soundEffect8 = minim.loadFile("Winding Alarm Clock copy 2.mp3"); ///Size Select L Sound
  soundEffect9 = minim.loadFile("Pen Writing .mp3"); //Pen Writing Sound
  soundEffect10 = minim.loadFile("Swoosh copy.mp3"); //Color
  soundEffect11 = minim.loadFile("Swoosh copy 2.mp3");
  soundEffect12 = minim.loadFile("Swoosh copy 3.mp3");
  soundEffect13 = minim.loadFile("Swoosh copy 4.mp3");
  soundEffect14 = minim.loadFile("Swoosh copy 5.mp3");
  soundEffect15 = minim.loadFile("Swoosh copy 6.mp3");
  soundEffect16 = minim.loadFile("Swoosh copy 7.mp3");
  soundEffect17 = minim.loadFile("Swoosh copy 8.mp3");
  soundEffect18 = minim.loadFile("Swoosh copy 9.mp3");
  soundEffect19 = minim.loadFile("Swoosh copy 10.mp3");
  soundEffect20 = minim.loadFile("Swoosh copy 11.mp3");
  soundEffect21 = minim.loadFile("Swoosh copy 12.mp3");
  //
  song1 = minim.loadFile("Illusions - Anno Domini Beats.mp3");
  songMetaData1 = song1.getMetaData();
  song2 = minim.loadFile("Xylophone Tip Toe Scale Up copy.mp3");
  songMetaData2 = song2.getMetaData();
  song3 = minim.loadFile("Pray - Anno Domini Beats.mp3");
  songMetaData3 = song3.getMetaData();
  //Song 1 Meta Data
  println( "File Name: ", songMetaData1.fileName() );
  println( "Song Length (in milliseconds): ", songMetaData1.length() );
  println( "Song Length (in seconds): ", songMetaData1.length()/1000 );
  println( "Song Length (in minutes & seconds): ", (songMetaData1.length()/1000)/60, " minute", (songMetaData1.length()/1000)-((songMetaData1.length()/1000)/60 * 60), " seconds" );
  println( "Song Title: ", songMetaData1.title() );
  println( "Author: ", songMetaData1.author() ); //Song Writer or Performer
  println( "Composer: ", songMetaData1.composer() ); //Song Writer
  println( "Orchestra: ", songMetaData1.orchestra() );
  println( "Album: ", songMetaData1.album() );
  println( "Disk: ", songMetaData1.disc() );
  println( "Publisher: ", songMetaData1.publisher() );
  println( "Date Release: ", songMetaData1.date() );
  println( "Copyright: ", songMetaData1.copyright() );
  println( "Comment: ", songMetaData1.comment() );
  println( "Lyrics: ", songMetaData1.lyrics() );
  println( "Track: ", songMetaData1.track() );
  println( "Genre: ", songMetaData1.genre() );
  println( "Encoded: ", songMetaData1.encoded() );
  //Song 2 Meta Data
  println( "\n\n\n File Name: ", songMetaData2.fileName() );
  println( "Song Length (in milliseconds): ", songMetaData2.length() );
  println( "Song Length (in seconds): ", songMetaData2.length()/1000 );
  println( "Song Length (in minutes & seconds): ", (songMetaData2.length()/1000)/60, " minute", (songMetaData2.length()/1000)-((songMetaData2.length()/1000)/60 * 60), " seconds" );
  println( "Song Title: ", songMetaData2.title() );
  println( "Author: ", songMetaData2.author() ); //Song Writer or Performer
  println( "Composer: ", songMetaData2.composer() ); //Song Writer
  println( "Orchestra: ", songMetaData2.orchestra() );
  println( "Album: ", songMetaData2.album() );
  println( "Disk: ", songMetaData2.disc() );
  println( "Publisher: ", songMetaData2.publisher() );
  println( "Date Release: ", songMetaData2.date() );
  println( "Copyright: ", songMetaData2.copyright() );
  println( "Comment: ", songMetaData2.comment() );
  println( "Lyrics: ", songMetaData2.lyrics() );
  println( "Track: ", songMetaData2.track() );
  println( "Genre: ", songMetaData2.genre() );
  println( "Encoded: ", songMetaData2.encoded() );
  //
  song1.play();
  populationVariables();
  //
  strokeWeight(1);
  fill(defaultGrey);
  rect( selectingSurfaceX, selectingSurfaceY, selectingSurfaceWidth, selectingSurfaceHeight );
  fill(resetWhite);
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
  //
}//End setup
//
void draw()
{
  selectDrawButtons();
  image1();
  //
  //Select
  //
  if ( selectButtonON == true && mouseX>selectButtonX && mouseX<selectButtonX+selectButtonWidth && mouseY>selectButtonY && mouseY<selectButtonY+selectButtonHeight ) {
    selectPenButton();
    selectCircleButton();
    selectEraserButton();
  }
  //
  //Select Pen Button
  //
  if ( selectPenButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    selectColorIfStatements();
    line (mouseX, mouseY, pmouseX, pmouseY); //Pen drawing tool
    fill(defaultGrey);
    strokeWeight(1);
    rect( selectingSurfaceX, selectingSurfaceY, selectingSurfaceWidth, selectingSurfaceHeight );
    fill(resetWhite);
    selectDrawButtons();
  }
  //
  //Select Circle Button
  //
  if ( selectCircleButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    selectColorIfStatements();
    ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Circle Drawing Tool
    fill(defaultGrey);
    strokeWeight(1);
    rect( selectingSurfaceX, selectingSurfaceY, selectingSurfaceWidth, selectingSurfaceHeight );
    fill(resetWhite);
    selectDrawButtons();
  }
  //
  //Select Eraser Button
  //
  if ( selectEraserButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    fill(resetWhite);
    noStroke();
    ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Circle Erasing Tool
    fill(defaultGrey);
    strokeWeight(1);
    rect( selectingSurfaceX, selectingSurfaceY, selectingSurfaceWidth, selectingSurfaceHeight );
    fill(resetWhite);
    selectDrawButtons();
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
  //Size Buttons
  //
  if ( sizeButtonON==true && mouseX>sizeButtonX && mouseX<sizeButtonX+sizeButtonWidth && mouseY>sizeButtonY && mouseY<sizeButtonY+sizeButtonHeight ) {
    sizeSButton();
    sizeMButton();
    sizeLButton();
  }
  //
  //S Size
  //
  if ( selectPenButtonON==true && sSizeON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    strokeWeight(1);
    line (mouseX, mouseY, pmouseX, pmouseY);
  }
  //
  if ( selectCircleButtonON==true && sSizeON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    selectColorIfStatements();
    ellipse( mouseX, mouseY, sizeSButtonDiameter, drawingDiameter);
  }
  //
  if ( selectEraserButtonON==true && sSizeON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    noStroke();
    fill(resetWhite);
    ellipse( mouseX, mouseY, sizeSButtonDiameter, sizeSButtonDiameter);
    stroke(1);
  }
  //
  //M Size
  //
  if ( selectPenButtonON==true && mSizeON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    strokeWeight(5);
    line (mouseX, mouseY, pmouseX, pmouseY);
  }
  //
  if ( selectCircleButtonON==true && mSizeON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    selectColorIfStatements();
    ellipse( mouseX, mouseY, sizeMButtonDiameter, sizeMButtonDiameter);
  }
  //
  if ( selectEraserButtonON==true && mSizeON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    noStroke();
    fill(resetWhite);
    ellipse( mouseX, mouseY, sizeMButtonDiameter, sizeMButtonDiameter);
    stroke(1);
  }
  //
  //L Size
  //
  if ( selectPenButtonON==true && lSizeON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    strokeWeight(10);
    line (mouseX, mouseY, pmouseX, pmouseY);
  }
  //
  if ( selectCircleButtonON==true && lSizeON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    selectColorIfStatements();
    ellipse( mouseX, mouseY, sizeLButtonDiameter, sizeLButtonDiameter);
  }
  //
  if ( selectEraserButtonON==true && lSizeON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    noStroke();
    fill(resetWhite);
    ellipse( mouseX, mouseY, sizeLButtonDiameter, sizeLButtonDiameter);
    stroke(1);
  }
  //
}//End draw
//
void keyPressed() {
  if ( key=='f' || key=='F' ) song1.skip(5000); // skip forward 1 second (1000 milliseconds)
  if ( key=='r' || key=='R' ) song1.skip(-5000); // skip backwards 1 second (1000 milliseconds)
  if ( key=='s' || key=='S' ) { //STOP Button
    if (song1.isPlaying()) {
      song1.pause();
      song1.rewind();
    } else { //Song is not playing
      song1.rewind();
    }
  }
  if ( key=='p' || key=='P' ) {//PLAY/PAUSE
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if (song1.position() >= song1.length() - song1.length()*1/1000) {
      song2.play();
    } else {
      song1.play();
    }
  }
  if (key=='m' || key=='M') {
    if (song1.isMuted()) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }
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
  if ( selectPenButtonON==true && draw==true && mouseX>selectPenButtonX && mouseX<selectPenButtonX+selectPenButtonWidth && mouseY>selectPenButtonY && mouseY<selectPenButtonY+selectPenButtonHeight ) {
    soundEffect9.loop();
  } else {
    soundEffect9.pause();
    soundEffect9.rewind();
  } //End selectPenButtonON
  //
  if ( mouseX>selectCircleButtonX && mouseX<selectCircleButtonX+selectCircleButtonWidth && mouseY>selectCircleButtonY && mouseY<selectCircleButtonY+selectCircleButtonHeight ) {
    soundEffect2.play();
    selectPenButtonON = false;
    selectCircleButtonON = true;
    selectEraserButtonON = false;
  } //End selectCircleButtonON
  //
  if ( selectCircleButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    soundEffect2.loop();
  } else {
    soundEffect2.pause();
    soundEffect2.rewind();
  }
  //
  if ( mouseX>selectEraserButtonX && mouseX<selectEraserButtonX+selectEraserButtonWidth && mouseY>selectEraserButtonY && mouseY<selectEraserButtonY+selectEraserButtonHeight ) {
    noStroke();
    soundEffect3.play();
    selectPenButtonON = false;
    selectCircleButtonON = false;
    selectEraserButtonON = true;
  } //End selectEraserButtonON
  //
  if ( selectEraserButtonON==true && draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    soundEffect3.loop();
  } else {
    soundEffect3.pause();
    soundEffect3.rewind();
  }
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
  selectColorSoundEffects();
  //
  if ( mouseX>sizeButtonX && mouseX<sizeButtonX+sizeButtonWidth && mouseY>sizeButtonY && mouseY<sizeButtonY+sizeButtonHeight ) {
    sizeButtonON=true;
  }
  //
  if ( mouseX>sizeSButtonX-sizeSButtonRadius && mouseX<sizeSButtonX+sizeSButtonRadius && mouseY>sizeSButtonY-sizeSButtonRadius && mouseY<sizeSButtonY+sizeSButtonRadius ) {
    sSizeON=true;
    mSizeON=false;
    lSizeON=false;
  }
  //
  if ( mouseX>sizeMButtonX-sizeMButtonRadius && mouseX<sizeMButtonX+sizeMButtonRadius && mouseY>sizeMButtonY-sizeMButtonRadius && mouseY<sizeMButtonY+sizeMButtonRadius ) {
    sSizeON=false;
    mSizeON=true;
    lSizeON=false;
  }
  //
  if ( mouseX>sizeLButtonX-sizeLButtonRadius && mouseX<sizeLButtonX+sizeLButtonRadius && mouseY>sizeLButtonY-sizeLButtonRadius && mouseY<sizeLButtonY+sizeLButtonRadius ) {
    sSizeON=false;
    mSizeON=false;
    lSizeON=true;
  }
  //
  if (mouseX> sizeSButtonX-sizeSButtonRadius && mouseX< sizeSButtonX+sizeSButtonRadius && mouseY> sizeSButtonY-sizeSButtonRadius && mouseY< sizeSButtonY+sizeSButtonRadius) {
    soundEffect6.play();
  } else {
    soundEffect6.pause();
    soundEffect6.rewind();
  }
  //
  if (mouseX> sizeMButtonX-sizeMButtonRadius && mouseX< sizeMButtonX+sizeMButtonRadius && mouseY> sizeMButtonY-sizeMButtonRadius && mouseY< sizeMButtonY+sizeMButtonRadius) {
    soundEffect7.play();
  } else {
    soundEffect7.pause();
    soundEffect7.rewind();
  }
  //
  if (mouseX> sizeLButtonX-sizeLButtonRadius && mouseX< sizeLButtonX+sizeLButtonRadius && mouseY> sizeLButtonY-sizeLButtonRadius && mouseY< sizeLButtonY+sizeLButtonRadius) {
    soundEffect8.play();
  } else {
    soundEffect8.pause();
    soundEffect8.rewind();
  }
  //
  //Quit&Reset
  //
  if (mouseX> resetButtonX && mouseX< resetButtonX+resetButtonWidth && mouseY> resetButtonY && mouseY< resetButtonY+resetButtonHeight) {
    soundEffect5.play();
    fill(resetWhite);
    rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
  } else {
    soundEffect5.pause();
    soundEffect5.rewind();
  }
  //
  if (mouseX> quitButtonX && mouseX< quitButtonX+quitButtonWidth && mouseY> quitButtonY && mouseY< quitButtonY+quitButtonHeight) {
    soundEffect5.play();
    exit();
  }
  //
  if ( mouseX> ppButtonX && mouseX< ppButtonX+ppButtonWidth && mouseY> ppButtonY && mouseY< ppButtonY+ppButtonHeight ) {//PLAY/PAUSE
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if (song1.position() >= song1.length() - song1.length()*1/1000) {
      song2.play();
    } else {
      song1.play();
    }
    if ( song2.isPlaying() ) {
      song2.pause();
    } else if (song2.position() >= song2.length() - song2.length()*1/1000) {
      song3.play();
    } else {
      song2.play();
    }
  }
}//End mousePressed
//
//End MAIN Program
