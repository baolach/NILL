class KittyBox extends GameObject
{
  int kitties;
  int index;
  float halfWidth, halfHeight;
  
  KittyBox()
  {
    kitties = (int)random(1, 10);
    w = 15;
    h = 25;
    halfWidth = w / 2;
    halfHeight = h / 2;
  }
  
  void display()
  {
    if (isOnScreen(position))
    {
        pushMatrix();
        noFill();
        translate(position.x, position.y);
        stroke(255, 255, 102);    
        printText("" + kitties, font_size.small, (int)-5, (int)-22);
        rect(-halfWidth, -h, w, h);
        popMatrix();
    }
  }
}
