void KlasseAnalyse() {
  Forside = false;
  Elev1Stats = false;
  IotaKlasse = false;
  Opgaver = false;
  KlasseAnalyse = true;
  LineaerRegressionOpgave = false;

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
  //Klasse udvælgelse
  stroke(0);
  strokeWeight(2);
  fill(200);
  rect(KlassePosX, KlassePosY, 150, 40);
  fill(0);
  textSize(25);
  text("Iota", KlassePosX+50, 45);
  noStroke();
}
