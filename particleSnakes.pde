ArrayList<trailParticle> tp = new ArrayList<trailParticle>();
ArrayList<trailParticle> tpToRemove = new ArrayList<trailParticle>();
ArrayList<snake> snakes = new ArrayList<snake>();
ArrayList<snake> snakesToRemove = new ArrayList<snake>();

void setup() {
  size(600, 600);

  for (int i = 0; i < 10; i++) {
    snakes.add(new snake((int)random(width), height, color(0, random(255), random(255))));
  }
}

void draw() {
  background(0, 0, 0, 10);
  for (snake s : snakes) {
    s.update();
    s.display();
  }
  for (snake s : snakesToRemove) {
    snakes.remove(s);
  }
  for (trailParticle t : tp) {
    t.update();
    t.display();
  }
  for (trailParticle t : tpToRemove) {
    tp.remove(t);
  }
  for (int i = snakes.size(); i < 10; i++) {
    snakes.add(new snake((int)random(width), height, color(0, random(255), random(255))));
  }
}