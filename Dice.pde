Die bob;
int dieTotal = 0;
void setup() {
  background(192,151,229);
  size(600, 600);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  noLoop();
  
}
void draw() {
  for(int y = 100 ; y <=500  ; y = y+100) {
    for(int x = 100 ; x <= 500 ; x = x+100){
    Die bob = new Die(x, y);
    bob.roll();
    bob.show();
    if ( bob.rolled==1){
      dieTotal = dieTotal + 1;
    }else if (bob.rolled == 2){
      dieTotal = dieTotal + 2;
    }else if (bob.rolled == 3){
      dieTotal = dieTotal + 3;
    }else if (bob.rolled == 4){
      dieTotal = dieTotal + 4;
    }else if (bob.rolled == 5){
      dieTotal = dieTotal + 5;
    }else if (bob.rolled == 6){
      dieTotal = dieTotal + 6;
    }
}
}
    System.out.println(dieTotal);
     noStroke();
     fill(86,20,144);
     rect(300,570,150,40);
     fill(255);
     textSize(20);
     text("Total = "+ dieTotal,300,570);
     dieTotal = 0;
}
void mousePressed() {
  redraw();
}
class Die { //models one single dice cube
  //member variable declarations here
  int rolled;
  int myX, myY;

  Die(int x, int y) { //constructor
    //variable initializations here
    rolled = 1;
    myX = x;
    myY = y;
  }
  void roll() {

    rolled = (int)(Math.random()*6)+1 ;
  }
  void show() {
    fill(255);
    rect(myX, myY, 80, 80);
    fill(0);
    if (rolled == 1) {
      ellipse(myX,myY,15,15);
    } else if (rolled ==2) {
      ellipse(myX-20,myY+20,15,15);
      ellipse(myX+20,myY-20,15,15);
    } else if (rolled ==3) {
      ellipse(myX-20,myY+20,15,15);
      ellipse(myX+20,myY-20,15,15);
      ellipse(myX,myY,15,15);
    } else if (rolled ==4) {
      ellipse(myX-20,myY+20,15,15);
      ellipse(myX+20,myY-20,15,15);
      ellipse(myX-20,myY-20,15,15);
      ellipse(myX+20,myY+20,15,15);
    } else if (rolled ==5) {
      ellipse(myX-20,myY+20,15,15);
      ellipse(myX+20,myY-20,15,15);
      ellipse(myX-20,myY-20,15,15);
      ellipse(myX+20,myY+20,15,15);
      ellipse(myX,myY,15,15);
    } else {
      ellipse(myX-20,myY+20,15,15);
      ellipse(myX+20,myY-20,15,15);
      ellipse(myX-20,myY-20,15,15);
      ellipse(myX+20,myY+20,15,15);
      ellipse(myX-20,myY,15,15);
      ellipse(myX+20,myY,15,15);
    }
  }
}
