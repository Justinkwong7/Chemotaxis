Bacteria bob = new Bacteria (340,340);
Bacteria c = new Bacteria (350,350);
Bacteria a = new Bacteria (360,360);
Bacteria b = new Bacteria (400,400);
PImage photo;

 void setup()   
 {     
   size(700,700); 
   photo = loadImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.clipartmax.com%2Fso%2Fhamburger-clipart%2F&psig=AOvVaw31Oqn6M39iJwBBzGb1QSwt&ust=1603347881256000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIi4yr6GxewCFQAAAAAdAAAAABAD");
 }   
 void draw()   
 {   
   background(5);
   bob.move();
   bob.show();
   c.move();
   c.show();
   a.move();
   a.show();
   b.move();
   b.show();
   photo.resize(50,50);
   image(photo, mouseX-25, mouseY-25);
 }
 
 void mouseClicked(){
   c.recolor();
   a.recolor();
   bob.recolor();
   b.recolor();
 }
 
 class Bacteria    
 {     
   int mySize, myX, myY, myColor;
   
   void move() {
     if (mouseX > myX){
       myX = myX + (int)(Math.random()*5)-1;
     }
     else{
       myX = myX + (int)(Math.random()*5)-3;
     }
     if (mouseY > myY){
       myY = myY + (int)(Math.random()*5)-1;
     }
     else{
       myY = myY + (int)(Math.random()*5)-3;
     }
   }
   
   void show() {
   fill(myColor);
   ellipse(myX,myY,mySize,mySize);
   fill(0);
   ellipse(myX - 10, myY - 7, 5,5);
   ellipse(myX + 10, myY - 7, 5,5);
   fill(255);
   arc(myX, myY + 10, 30, 30, 0, PI, CHORD);
   }
   
   void recolor(){
   myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));  
   }
   
   Bacteria(int x, int y){
   myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   mySize = 60;
   myX = x;
   myY = y;
 }
 }
