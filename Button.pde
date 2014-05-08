class Button
{
  // Variables
  float posX;  // position of ellipse
  float posY;
  color value;
  // Constructor
  Button(float _posX, float _posY, color val)
  {
    posX = _posX;
    posY = _posY;
    value = val;
  }
  
  // Method(s)
  void draw()
  {
    stroke(color(0));
    fill(value);
    ellipse(posX, posY, 30, 30);
  }
  
  boolean handleMouse(float xP, float yP)
  {
      float a = posX - xP;
      float b = posY - yP;
      
      float dis = sqrt(a * a + b * b);

      return dis < 30; 
      
  }
}

