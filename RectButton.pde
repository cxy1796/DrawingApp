class RectButton
{
  // Variables
  float posX;  // position of rectangle
  float posY;

  // Constructor
  RectButton(float _posX, float _posY)
  {
    posX = _posX;
    posY = _posY;
  }
  
  // Method(s)
  void draw()
  {
    stroke(color(0));
    fill(150);
    rect(posX, posY, 50, 30);
  }
  
  boolean handleMouse(float xP, float yP)
  {
      if(xP < posX)
      {
        return false; // return false if not colliding
      }
      if(yP < posY)
      {
       return false; 
      }
      if(xP > posX + 50)
      {
       return false; 
      }
      if(yP > posY + 30)
      {
       return false; 
      }
      return true;
      
  }
}
