void PickKlasse() {
  if (mouseX > KlassePosX && mouseX < KlassePosX+150 && mouseY > KlassePosY && mouseY < KlassePosY+40)
  {
    if (mousePressed) {
      if (ShowDropBarMenu == false) {
        ShowDropBarMenu = true;
      }
    }
  }
}

void IotaPressed() {
  if (mouseX > KlassePosX && mouseX < KlassePosX+150 && mouseY > KlassePosY+40 && mouseY < KlassePosY+80 && ShowDropBarMenu == true) {
    if (mousePressed) {
      IotaKlasse();
    }
  }
}

void ShowMenu() {
  if (ShowDropBarMenu == true) {
    fill(200);
    rect(KlassePosX, KlassePosY+50, 150, 40);
    fill(0);
    textSize(25);
    text("Iota", KlassePosX+50, KlassePosY+80);
  }
}
