class snake {
  PVector pos;
  PVector vel;
  float rot;
  color c;
  float angle;
  float duration;
  


  snake(int x, int y, color c) {
    pos = new PVector(x, y); 
    vel = new PVector(0, -5).mult(1.5);
    this.c = c;
    angle = 0;
    duration = 0;
  }

  void edges() {
    if (pos.x < 0) {
      snakesToRemove.add(this);
    }
    if (pos.x > width) {
      snakesToRemove.add(this);
    }
    if (pos.y < 0) {
      snakesToRemove.add(this);
    }
    if (pos.y > height) {
      snakesToRemove.add(this);
    }
  }

  void update() {
    if (duration <= 0) {
      duration = random(50, 100);
      angle = random(-QUARTER_PI / 10, QUARTER_PI / 10);
    }
    duration--;
    vel = new PVector(vel.x * cos(angle) - vel.y * sin(angle), vel.x * sin(angle) + vel.y * cos(angle));
    pos.add(vel);
    edges();
    tp.add(new trailParticle(pos, c));
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(pos.x, pos.y, 5, 5);
  }
}