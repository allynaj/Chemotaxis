 Parasite[] bub; 
 void setup() {     
   size(500,500);
   noStroke();
   bub = new Parasite[30]; 
   for(int i = 0; i < bub.length; i++) {
     bub[i] = new Parasite();
   }
 }   
 void draw() { 
   background(10,20,10);
   for(int i = 0; i < bub.length; i++) {
     bub[i].show();
     bub[i].walk();
   }
 }  
 class Parasite {     
   int myX, myY, mySize, eyeSize;
   Parasite() {
     myX = (int)(Math.random()*300)+100;
     myY = (int)(Math.random()*300)+100;
     mySize = 30;
     eyeSize = 15;
   }
   
   void show() {
     fill(80,100,80);
     ellipse(myX, myY, mySize, mySize);
     ellipse(myX, myY + 8, mySize - 5, mySize - 5);
     fill(60,10,60);
     ellipse(myX - 5, myY - 2, eyeSize, eyeSize);
     ellipse(myX + 5, myY - 2, eyeSize, eyeSize);
   }
   void walk() {
     if (mouseX > myX)
     myX = myX + (int)(Math.random()*7)-2;
     else
     myX = myX + (int)(Math.random()*7)-4;
     if (mouseY > myY)
     myY = myY + (int)(Math.random()*7)-2;
     else
     myY = myY + (int)(Math.random()*7)-4;
   }
 }     

