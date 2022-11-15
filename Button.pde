// Source 1: https://processing.org/
// Source 2: https://www.youtube.com/watch?v=I5yoAsXWtOs for button creation and activation
// Source 3: https://www.youtube.com/watch?v=z903vXot-Lg for text display

class Button {
  PVector pos = new PVector(0, 0);
  float Width = 0;
  float Height = 0;
  String Text;
  color Color;
  color newColor;
  Boolean press = false;

  // constructor to create button
  Button(int x, int y, int w, int h, String t, color c) {
    pos.x = x;
    pos.y = y;
    Width = w;
    Height = h;
    Text = t;
    Color = c;
    newColor = lerpColor(color(c), color(#0000FF), 1.0);
  }
  
  // update the button upon click
  void update() {
    if (press) {
      fill(newColor);
    }
    else {
      fill(Color);
    }
    rect(pos.x, pos.y, Width, Height);
    
    fill(0);
    textSize(45);
    textAlign(CENTER, CENTER);
    text(Text, pos.x+(Width/2), pos.y+(Height/2));
  }
  
  // measurement for button so that only the button the mouse is over is clicked
  boolean mouseOver() {
    if (mouseX > pos.x && mouseX < (pos.x + Width) && mouseY > pos.y && mouseY < (pos.y + Height)) {
      return true;
    }
    else {
      return false;
    }
  }
}
