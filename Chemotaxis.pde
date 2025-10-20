//declare bacteria variables here
Bacteria [] susan = new Bacteria[10];

void setup()   
{
  //initialize bacteria variables here
  size(400, 400);
  for(int i = 0; i<susan.length; i++){
    susan[i] = new Bacteria();
  }
}

void draw()   
{
  //move and show the bacteria   
  background(0);
  for(int i = 0; i<susan.length; i++){
    susan[i].move();
    susan[i].show();
  }
}

class Bacteria
{
  //lots of java!
  int myColor;
  int myX;
  int myY;
  Bacteria(){
    myColor = color(0, (int)(Math.random()*55)+200, (int)(Math.random()*55)+200);
    myX = (int)(Math.random()*20)+150;
    myY = (int)(Math.random()*20)+150;
  }
  
  void show(){
    fill(myColor);
    ellipse(myX, myY, 10, 10);
  }
  
  void move(){
    myX = myX+(int)(Math.random()*5)-2;
    myY = myY+(int)(Math.random()*5)-2;
    if(dist(mouseX, mouseY, myX, myY)<100 && mouseX>myX){
      myX = myX+(int)(Math.random()*5)-3;
    }
    else if(dist(mouseX, mouseY, myX, myY)<100 && mouseX<myX){
      myX = myX+(int)(Math.random()*5)-1;
    }
    if(dist(mouseX, mouseY, myX, myY)<100 && mouseY>myY){
      myY = myY+(int)(Math.random()*5)-3;
    }
    else if(dist(mouseX, mouseY, myX, myY)<100 && mouseY<myY){
      myY = myY+(int)(Math.random()*5)-1;
    }
    if(myX>399)
      myX = 399;
    if(myX<1)
      myX = 1;
    if(myY>399)
      myY = 399;
    if(myY<1)
      myY = 1;
  }
}
