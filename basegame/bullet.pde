
class Bullet extends GameObject{


  PVector loc, vel, acc;
  int count = 0;
  float angle = 0;
  
  Bullet( PVector loc, float a) {
    print("a  " +a);
    this.loc = loc.get();
    angle = a*180/PI;
  } 


  void run() {

    display();
    update();
    checkEdges();
  }

  void display() {
    pushMatrix();
    translate(loc.x, loc.y);
    image(fireBalls[count++], 0, 0);
    popMatrix();
    if (count>8) count = 0;
  }

  void update() {
   
    println("loc.heading() = " +loc.heading());
    loc.x += cos(angle);
    loc.y += sin(angle);
  }
}

