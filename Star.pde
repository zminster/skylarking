class Star {
  PVector position, direction;  // invariant: direction is a unit vector
  
  Star(PVector position, PVector direction) {
    this.position = position;
    this.direction = direction;
  }
  
  void move(float velocity) {
    position.x += direction.x * velocity;
    position.y += direction.y * velocity;
    position.z += direction.z * velocity;
  }
  
  void render() {
    pushMatrix();
    translate(position.x, position.y, position.z);
    box(10);
    popMatrix();
  }
}