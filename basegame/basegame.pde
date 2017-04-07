
int MAXFIRE = 9;
PImage[] fireBalls = new PImage[MAXFIRE];
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
PImage spaceShip;
PImage enemy;
boolean fireBullet = false;

void setup() {
  size(1100, 800);
  background(80, 150, 155);
  loadImages();
  createGameObject("ship", 3);
  createGameObject("enemy", 3);
  enemy = loadImage("enemy.png");
  spaceShip = loadImage("spaceship.jpg");
}

void draw() {
  background(60, 90, 95);
  runObjects();
}

void runObjects() {
  for (int i = 0; i < gameObjects.size (); i++) {
    gameObjects.get(i).run();
  }
  if (bullets.size() > 0) {
    for (int i = 0; i < bullets.size (); i++) 
      bullets.get(i).run();
  }
}
void loadImages() {
  spaceShip = loadImage("spaceship.png");
  for (int i = 0; i < MAXFIRE; i++) {
    fireBalls[i] = loadImage("/fire/f"+i+".png");
  }
}

void createGameObject(String type, int n) {
  if (type.equals("ship")) {
    for (int i = 0; i < 1; i++) {
      gameObjects.add(new Ship(spaceShip, new PVector(random(width), random(height)), new PVector(random(-8, 8), random(-8, 8))));
    }
  }
  if(type.equals("enemy")){
    for(int j = 0; j < 1; j++){
      gameObjects.add(new Enemy(enemy, new PVector(random(-8,8), random(-8,8)), new PVector(random(width),random(height))));
    }
  }
}

void mousePressed() {
  fireBullet = true;
}

