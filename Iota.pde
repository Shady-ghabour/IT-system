void IotaKlasse() {
  Forside = false;
  IotaKlasse = true;
  Elev1Stats = false;
  LineaerRegressionOpgave = false;
  ShowDropBarMenu = false;
  Opgaver = false;
  OpgaveNummer = 1;
  //Klassens Elever
  stroke(0);
  strokeWeight(1);
  fill(255);
  //Elev 1
  rect(0, IotaKlassePosY+245, width-26, 50);
  //Elev n
  rect(0, IotaKlassePosY+1600, width-26, 50);
  //Elevers Navne
  textSize(30);
  fill(0);
  text("Elev 1", 50, IotaKlassePosY+283);
  text("Elev n", 50, IotaKlassePosY+1637);
  //ElevScore
  text(ElevScore, (width/2)-30, IotaKlassePosY+283);
  text("/100", (width/2)-10, IotaKlassePosY+283);
  text(ElevKarakter, width-150, IotaKlassePosY+283);



  //Scroll Down Bar Background
  fill(235);

  rect(width-25, 245, 25, height);


  //ScrollDown Function
   stroke(0);
  strokeWeight(1);
  fill(200);
  rect(width-25, Scroll, 25, 100);

  if (mouseX > width-25 && mouseX < width && mouseY > 244 && mouseY < 900) {
    if (mousePressed) {
      Scroll = mouseY;
      IotaKlassePosY = -(mouseY-244);
      if (mouseY == 245) {
        IotaKlassePosY = 0;
      }
    }
  }
  //Layout
  noStroke();
  fill(123);
  rect(0, 0, width, 75);

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
  noStroke();

  //KlasseAnalyse
  fill(200);
  rect(0, 125, width, 70);
  textSize(45);
  fill(0);
  text("Klasse Analyse", width/2-135, 175);
  stroke(0);

  //giv opgaver
  noStroke();
  fill(75);
  rect(0, 75, width, 50);
  fill(255);
  textSize(30);
  text("Uddel Opgaver", width/2-85, 110);
  stroke(255);
  strokeWeight(2);
  line(width/2-85,110,width/2+105,110);
 
  noStroke();
  //ElevScoreBoard
  fill(170);
  rect(0, 195, width, 50);
  textSize(30);
  fill(0);
  text("Navn", 50, 233);
  text ("Score", (width/2)-25, 233);
  text("Karakter", width-185, 233);

  //DropDownMenu Iota
  if (mouseX > KlassePosX && mouseX < KlassePosX+150 && mouseY > KlassePosY && mouseY < KlassePosY+40 && IotaKlasse == true)
  {
    if (mousePressed) {
      wasMousePressed = true;
      mouseReleased = false;
    }
    if ( (mouseReleased == true) && (wasMousePressed==true)) {
      wasMousePressed = false;
      IotaKlasseDropMenu = true;
    }
  }
  if (IotaKlasseDropMenu == true) {
    fill(200);
    stroke(0);
    rect(KlassePosX, KlassePosY+50, 150, 40);

    fill(0);
    textSize(22);
    text("Ingen Klasse", KlassePosX+10, KlassePosY+80);
  }
  if (mouseX > KlassePosX && mouseX < KlassePosX+150 && mouseY > KlassePosY+50 && mouseY < KlassePosY+130 && IotaKlasse == true && IotaKlasseDropMenu == true) {
    if (mousePressed) {
      wasMousePressed = true;
      mouseReleased = false;
    }
    if ( (mouseReleased == true) && (wasMousePressed==true)) {
      wasMousePressed = false;
      Forside();
      ShowDropBarMenu = false;      //Forside = true;
    }
  }
}
