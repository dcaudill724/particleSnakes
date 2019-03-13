class trailParticle{
  PVector pos;
  color c;
  float b = 5;
  
  trailParticle(PVector pos, color c){
    this.pos = pos.copy();
    this.c = c;
    tp.add(this);
  }
  
  void update(){
    if(b <= 0){
      tpToRemove.add(this); 
    } else {
      b -= 0.05;
    }
  }
  
  void display(){
    fill(red(c), green(c), blue(c), 255);
    ellipse(pos.x, pos.y, b, b);
  }
}