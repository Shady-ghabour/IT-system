void Opgaver() {

  Forside = false;
  IotaKlasse = false;
  Opgaver = true;
  Elev1Stats = false;
  LineaerRegressionOpgave = false;
  


  //Layout
  noStroke();
  fill(123);
  rect(0, 0, width, 75);
  //Opgaver text
  noStroke();
  fill(75);
  rect(0, 75, width, 50);
  fill(255);
  textSize(30);
  text("Uddel Opgaver", width/2-90, 110);
  //Velkommen Username
  textSize(50);
  fill(255);
  text("Velkommen Lærer", 10, 55);
  text("Klasse:", 1150, 50);
  //Klasse udvælgelse
  stroke(0);
  strokeWeight(2);
  fill(200);
  rect(KlassePosX, KlassePosY, 150, 40);
  fill(0);
  textSize(25);
  text("Iota", KlassePosX+50, 45);
  //Vælg elev
  fill(169);
  rect(0, 125, width, 60);
  noStroke();
  OpgaveNummer = 1;





  //Opgaver Layout
  //Lineær Regression
  stroke(0);
  fill(255);
  rect(150, 250, 300, 200);
  fill(0);
  textSize(30);
  text("Lineær Regression", 165, 230);
  textSize(50);
  text("f(x)=ax+b", 175, 360);
  fill(255);

  //tildel
  rect(150, 475, 140, 25);
  fill(0);
  textSize(20);
  text("Tildel", 195, 495);
  //prøv Selv
  fill(255);
  rect(310, 475, 140, 25);
  fill(0);
  textSize(20);
  text("Prøv Selv", 340, 495);
  //Uddel opgaven funktion
  if (mouseX > 150 && mouseX < 290 && mouseY > 475 && mouseY < 500 && Opgaver == true && LineaerRegression == false) {
    if (mousePressed) {
      wasMousePressed = true;
      mouseReleased = false;
    }
    if ( (mouseReleased == true) && (wasMousePressed==true)) {
      LineaerRegression = true;
      wasMousePressed = false;
    }
  }
  if (LineaerRegression == true && Opgaver == true && Elev1Stats == false)
  {
    Elev1Stats();
  }

  //Prøv selv opgaven
  if (mouseX > 310 && mouseX < 450 && mouseY > 475 && mouseY < 500 && Opgaver == true) {
    if (mousePressed) {
      wasMousePressed = true;
      mouseReleased = false;
    }
    if ( (mouseReleased == true) && (wasMousePressed==true)) {
      wasMousePressed = false;
      LineaerRegressionOpgave = true;
    }
  }

  //Vælg elev til opgave
  fill(255);
  textSize(35);
  text("Vælg elev(er):", 10, 165);
  fill(200);
  rect(250, 135, 150, 40);
  if (mouseX > 250 && mouseX < 400 && mouseY > 135 && mouseY < 175 && Opgaver == true && Elev1 == false)
  {
    if (mousePressed) {
      wasMousePressed = true;
      mouseReleased = false;
    }
    if ( (mouseReleased == true) && (wasMousePressed==true)) {
      wasMousePressed = false;
      OpgaverDropDown = true;
    }
  }
  if (OpgaverDropDown == true)
  {
    stroke(0);
    rect(250, 190, 150, 40);

    rect(250, 245, 150, 40);
    textSize(30);
    fill(0);
    text("Elev 1", 280, 225);
    textSize(25);
    text("Alle Elever", 260, 275);
  }
  if (mouseX > 250 && mouseX < 400 && mouseY > 190 && mouseY < 230 && OpgaverDropDown == true)
  {
    if (mousePressed) {
      wasMousePressed = true;
      mouseReleased = false;
    }
    if ( (mouseReleased == true) && (wasMousePressed==true)) {
      wasMousePressed = false;

      OpgaverDropDown = false;
      Elev1 = true;
    }
    
  }
  
  if (Elev1 == true && OpgaverDropDown == false) {
      fill(200);
      rect(250, 135, 150, 40);
      fill(0);
      textSize(30);
      text("Elev 1", 280, 167);
  }
  
  if (mouseX > 250 && mouseX < 400 && mouseY > 135 && mouseY < 175 && OpgaverDropDown == false && Elev1 == true)
   {
    if (mousePressed) {
      wasMousePressed = true;
      mouseReleased = false;
    }
    if ( (mouseReleased == true) && (wasMousePressed==true)) {
      wasMousePressed = false;

      OpgaverDropDown = false;
      Elev1Drop = true;
    }
    
  }
      
   if (Elev1Drop == true){
    fill(200);
  rect(250, 190, 150, 40);
  fill(0);
  text("Alle Elever", 260, 220);
  }
  
    if (mouseX > 250 && mouseX < 400 && mouseY > 135 && mouseY < 175 && Elev1Drop == true)
   {
    if (mousePressed) {
      wasMousePressed = true;
      mouseReleased = false;
    }
    if ( (mouseReleased == true) && (wasMousePressed==true)) {
      wasMousePressed = false;

      OpgaverDropDown = false;
      //Elev1Drop = false;
      AlleDrop = true;
    }
    
  }
 
    
    
    
    
   //Return Function
    fill(75);
    stroke(0);
    ellipse(30,100,40,40);
    fill(255);
    line(15,100,45,100);
    line(15,100,20,95);
    line(15,100,20,105);
    if (mouseX > 8 && mouseX < 53 && mouseY > 80 && mouseY < 120 && Opgaver == true) {
      if (mousePressed) {
        wasMousePressed = true;
        mouseReleased = false;
      }
      if ( (mouseReleased == true) && (wasMousePressed==true)) {
        IotaKlasse();
        wasMousePressed = false;
      }
    }
}
