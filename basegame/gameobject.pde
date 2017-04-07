
class GameObject {
  int r = 6;
  PVector loc, vel, acc;
  PImage img;
  
  GameObject() {
  }

  GameObject(PImage img, PVector loc) {
    this.loc = loc;
    this.img = img;
    vel = new PVector(0,0);
  }

  GameObject(PVector loc, PVector vel) {
  }

  GameObject(PImage img, PVector loc, PVector vel) {
    this.vel = vel;
    this.loc = loc;
    this.img = img;
  }
  
  void run()
   {
     update();
     display();
     checkEdges();
   }
   
   void update(){
    vel.limit(1);
    loc.add(vel);
    
   }
   
   void display(){
     
   }
   
   void checkEdges(){
     if(loc.x < 0) loc.x = width;
     if(loc.x > width) loc.x = 0;
     if(loc.y < 0) loc.y = height;
     if(loc.y > height) loc.y = 0;
     
   }
  
}

