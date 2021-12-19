


void prepareLines()
{
  b = int(random(5));
  x0 = 0;
  y0 = x0+b;
  x1 = 4;
  y1 = int(random(5));
}

void LineaerRegressionOpgave() {
  Forside = false;
  IotaKlasse = false;
  LineaerRegressionOpgave = true;
  Opgaver = false;

  //Layout
  noStroke();
  fill(123);
  rect(0, 0, width, 75);
  fill(75);
  rect(0, 75, width, 50);


  //Velkommen Username
  textSize(50);
  fill(255);
  text("Velkommen Lærer", 10, 55);
  text("Klasse:", 1150, 50);

  //Opgave layout
  strokeWeight(2);
  stroke(0);
  rect(300, 150, 900, 500);
  //Left-up
  rect(300, 700, 400, 100);
  //Left-down
  rect(300, 825, 400, 100);
  //Right-Up
  rect(800, 700, 400, 100);
  //Right-Down
  rect(800, 825, 400, 100);

  //Koordinat-system
  fill(0);
  strokeWeight(1);
  //x-axis
  line(350, 600, 1150, 600);
  //x-axis points from 1-4
  textSize(20);
  text("1", 495+50, 640);
  line(550, 615, 550, 585);
  text("2", 695+50, 640);
  line(750, 615, 750, 585);
  text("3", 895+50, 640);
  line(950, 615, 950, 585);
  text("4", 1095+50, 640);
  line(1150, 615, 1150, 585);

  //y-axis
  line(350, 600, 350, 200);
  //y-axis points 1-4
  text("1", 315, 505);
  line(335, 500, 365, 500);
  text("2", 315, 405);
  line(335, 400, 365, 400);
  text("3", 315, 305);
  line(335, 300, 365, 300);
  text("4", 315, 205);
  line(335, 200, 365, 200);

  strokeWeight(2);
  line(350+(x0*200), 600-(y0*100), 350+(x1*200), 600-(y1*100));
  strokeWeight(1);
  //Opgave nummer
  textSize(40);
  text("Opgave " + OpgaveNummer + "/5", 1250, 200);
  //SvarMuligheder
  textSize(40);

  if (ResultBox == 0) {
    text("f(x)="+a+"x+"+b, 390, 770);
    text("f(x)="+(a+2)+"x+"+b, 890, 770);

    text("f(x)="+(a+1)+"x+"+b, 390, 895);
    text("f(x)="+(a-1)+"x+"+b, 890, 895);
  }
  if (ResultBox == 1) {
    text("f(x)="+(a+2)+"x+"+b, 390, 770);
    text("f(x)="+a+"x+"+b, 890, 770);

    text("f(x)="+(a+1)+"x+"+b, 390, 895);
    text("f(x)="+(a-1)+"x+"+b, 890, 895);
  }
  if (ResultBox == 2) {
    text("f(x)="+(a+1)+"x+"+b, 390, 770);
    text("f(x)="+(a+2)+"x+"+b, 890, 770);

    text("f(x)="+a+"x+"+b, 390, 895);
    text("f(x)="+(a-1)+"x+"+b, 890, 895);
  }
  if (ResultBox == 3) {
    text("f(x)="+(a-1)+"x+"+b, 390, 770);
    text("f(x)="+(a+2)+"x+"+b, 890, 770);

    text("f(x)="+(a+1)+"x+"+b, 390, 895);
    text("f(x)="+a+"x+"+b, 890, 895);
  }
  
  //Vælg svar
  //Left-Up
  if (mouseX > 300 && mouseX < 700 && mouseY > 700 && mouseY < 800) {
    if (mousePressed && RunOnce == false) {
      OpgaveNummer = OpgaveNummer+1;
      prepareLines();
      RunOnce = true;
    }
  }

  //Right-Up
  if (mouseX > 800 && mouseX < 1200 && mouseY > 700 && mouseY < 800) {
    if (mousePressed && RunOnce == false) {
      OpgaveNummer = OpgaveNummer+1;
      prepareLines();
      RunOnce = true;
    }
  }
  //Left-Down
  if (mouseX > 300 && mouseX < 700 && mouseY > 825 && mouseY < 925) {
    if (mousePressed && RunOnce == false) {
      OpgaveNummer = OpgaveNummer+1;
      prepareLines();
      RunOnce = true;
    }
  }

  //Right-Down
  if (mouseX > 800 && mouseX < 1200 && mouseY > 825 && mouseY < 925) {
    if (mousePressed && RunOnce == false) {
      OpgaveNummer = OpgaveNummer+1;
      prepareLines();
      RunOnce = true;
    }
  }
  if(OpgaveNummer == 5){
   Opgaver(); 
  }
   //Return Function
   strokeWeight(2);
    fill(75);
    stroke(0);
    ellipse(30,100,40,40);
    fill(255);
    line(15,100,45,100);
    line(15,100,20,95);
    line(15,100,20,105);
    if (mouseX > 8 && mouseX < 53 && mouseY > 80 && mouseY < 120 && LineaerRegressionOpgave == true) {
      if (mousePressed) {
        wasMousePressed = true;
        mouseReleased = false;
      }
      if ( (mouseReleased == true) && (wasMousePressed==true)) {
        Opgaver();
        wasMousePressed = false;
      }
    }
}
