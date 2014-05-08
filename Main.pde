// Variables
Button button1;
Button button2;
Button button3;
Button button4;
Button button5;
RectButton saveBtn;
RectButton randomBtn;
Button[] buttons;
RectButton[] rectangles;
color value1;
color value2;
color value3;
color value4;
color value5;
color drawColor = color(0);

// Constructor
void setup()
{
  size(400, 400);
  background(100);
  smooth();

  value1 = color(random(255), random(255), random(255));
  value2 = color(random(255), random(255), random(255));
  value3 = color(random(255), random(255), random(255));
  value4 = color(random(255), random(255), random(255));
  value5 = color(random(255), random(255), random(255));

  button1 = new Button(20, 350, value1);
  button2 = new Button(55, 350, value2);
  button3 = new Button(90, 350, value3);
  button4 = new Button(125, 350, value4);
  button5 = new Button(160, 350, value5);
  saveBtn = new RectButton(200, 335);
  randomBtn = new RectButton(270, 335);
  buttons = new Button[5];
  rectangles = new RectButton[2];

  // Stores buttons for colors
  buttons[0] = button1;
  buttons[1] = button2;
  buttons[2] = button3;
  buttons[3] = button4;
  buttons[4] = button5;

  rectangles[0] = saveBtn;
  rectangles[1] = randomBtn;

  text("Save", 200, 335);
  text("Random Color", 270, 335);
}

void draw()
{
  for (int i = 0; i < buttons.length; i++)
  {
    buttons[i].draw();
  }

  for (int j = 0; j < rectangles.length; j++)
  {
    rectangles[j].draw();
  }
  // Draws line
  if (mousePressed == true) 
  {
    stroke(drawColor);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void mousePressed()
{
  for (int i = 0; i < buttons.length; i++)
  {
    if (buttons[i].handleMouse(mouseX, mouseY))
    {
      drawColor = buttons[i].value;
    }
  }

  for (int j = 0; j < rectangles.length; j++)
  {
    if (rectangles[j].handleMouse(mouseX, mouseY))
    {
      if (rectangles[j] != rectangles[1])
      {
        save("image.jpg");
      }
      else
      {
        for (int k = 0; k < buttons.length; k++)
        {
          buttons[k].value = color(random(255), random(255), random(255));
        }
      }
    }
  }
}

