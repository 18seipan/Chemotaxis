Walker palm;
Walker[] group;

boolean snapshot = false;

void setup() {
  size(500, 500);
  noStroke();
  palm = new Walker();
  group = new Walker[300];
  for (int i = 0; i < group.length; i++) {
    group[i] = new Walker();
  }
}

void draw() {
  background(140, 182, 240);
  for (int i=0; i<group.length; i++)
  {
    group[i].walk();
    group[i].show();
  }
  if (snapshot==false) {
    loop();
  } else {
    noLoop();
  }
}
  class Walker {
    int myX, myY;
    Walker()
    {
      myX = 250;
      myY= 250;
    }
    void walk() {
      myX = myX + (int)(Math.random()*3)-1;
      myY = myY + (int)(Math.random()*3)-1;
    }

    void show() {
      fill(255, 0, 0);
      ellipse(myX, myY, 10, 10);
      textSize(50);
      text("BATERIA", 50, 50);
      textSize(40);
      text("Press the mouse", 50, 450);
    }

    void mousePressed() {
      snapshot = true;
    }
  }
