void Elev1Stats() {
  Elev1Stats = true;
  Forside = false;
  IotaKlasse = false;
  LineaerRegressionOpgave = false;
  Opgaver = false;
  if (Elev1Stats == true) {
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
    text("Elev 1", width/2-30, 110);
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

    //ingen opgaver text
    if (LineaerRegression == false && Elev1Stats == true) {
      fill(200);
      textSize(90);
      text("Eleven har ingen opgaver for!", 100, height/2+100);
    }
    if (LineaerRegression == true && Elev1Stats == true) {
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
      textSize(30);
      fill(70);
      text("Ikke Påbegyndt",(width/2)-100,375);

      //fjern opgave
      fill(175);
      rect(150, 450, 300, 30);
      textSize(20);
      fill(0);
      text("Fjern Opgave", 250, 470);
    }
    if (mouseX > 150 && mouseX < 450 && mouseY > 460 && mouseY < 510 && LineaerRegression == true && Elev1Stats == true) {
      if (mousePressed) {
        wasMousePressed = true;
        mouseReleased = false;
      }
      if ( (mouseReleased == true) && (wasMousePressed==true)) {
        LineaerRegression = false;
        wasMousePressed = false;
      }
    }

    //Elev
    fill(170);
    textSize(30);
    fill(0);
    text("Opgaver", 240, 168);
    text ("Status", (width/2)-25, 168);
    text("Karakter", width-185, 168);
    //Return Function
    fill(75);
    stroke(0);
    ellipse(30,100,40,40);
    fill(255);
    line(15,100,45,100);
    line(15,100,20,95);
    line(15,100,20,105);
    if (mouseX > 8 && mouseX < 53 && mouseY > 80 && mouseY < 120 && Elev1Stats == true) {
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
}
