int x = 250, y = 250;
int w = 200, h = 100;
int xPos = x, xDir;
float speedX = 2, torpedoX = x;
boolean fire = false;

void setup(){
  size(500,500);
}
 

 void draw(){
   //clear();
  background(124,185,232);
 noStroke();
   fill(77,77,250);
 rect(0,100,500,400); //vand
 
 fill(255,255,77);
 ellipse(width/2,y, w, h); //ubåd
 rect(width/2+5,y-80,30,40);
 //if(y>=width)y = 0;
 if(fire){
 fill(212,212,212);
    ellipse(torpedoX,y, 50, 20); 
   torpedoX = torpedoX + speedX;
 }
 }
 
  void mousePressed(){
   
    if(mouseY < 100){
     y = y - 150; //rykker den op
   }
   
   if(mouseY > 400){
     y = y + 150; // rykker den ned
   } 
   
if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
  fire = true;
  }
}
  
  
  
  
