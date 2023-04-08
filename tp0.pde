PImage taladro;

void setup() {
  size(800, 400);  // establece el tamaño de la ventana de dibujo
  background(255); // establece el fondo en blanco
  taladro = loadImage("taladro.jpg"); 
  taladro.resize (400,400);
}

void draw() {
  background(255);
  image(taladro,400,0);
  fill (#2D5C9B);
  noStroke();
  rect (278,96,68,136); //mango del taladro
  rect(227,26,150,70);
  //rect (220,230,138,100); //base del taladro prueba
  fill(0);
  quad(220,231,184,330,370,330,370,231); //base taladro
  fill(#173F74);
  rect (228,96,52,21);
  fill (0);
  rect (180,23,70,75);// rectangulo negro
  rect (365,23, 20, 75);
  triangle (181,99,121,58,180,24);
  fill (#AF1F09);
  rect (262,117,20,27);
  fill(180);
  rect (40,56,85,5); // punta del taladro 
  circle (130,58,11);
  stroke(180);
  strokeWeight(8);
  line(180,25,180,94);
  strokeWeight(1);
  stroke(180);
  line(206,23,206,96);
  stroke(80);
  line(227,70,249,70);
  line(227,75,249,75);
  line(227,80,249,80);
  line(227,85,249,85);
  line(227,90,249,90);
  
  stroke(255);
  strokeWeight(2);
  noFill();
  rect(225,280,120,25);
  
  stroke(0);
  strokeWeight(2);
  fill(0);
  beginShape();
  vertex(346,97);
  vertex(310,106);
  vertex(310,155);
  vertex (336,167);
  vertex(345,226);
  endShape();
  
  stroke(0);
  strokeWeight(2);
  fill(0);
  beginShape();
  vertex(278,167);
  vertex(313,179);
  vertex(315,226);
  vertex (278,225);
 
  endShape();
  
  stroke(255);
  strokeWeight(0.5);
  fill(0);
  beginShape();
  vertex(346,100);
  vertex(315,110);
  vertex(315,153);
  vertex (341,167);
  vertex(345,226);
  endShape();
  
  
  noStroke();
  strokeWeight(1);
  fill(180);
  beginShape();
  vertex(293,253);
  vertex(335,253);
  vertex(335,273);
  vertex(332,273);
  vertex(341,299);
  vertex(327,299);
  vertex(318,273);
  vertex(309,273);
  vertex (301,299);
  vertex (287,299);
  vertex(295,273);
  vertex(292,273);
  vertex(293,253);
  endShape();
  
  noStroke();
  fill (#AF1F09);
  rect (294,99,20,7);
  rect(320,26,20,20);
  rect(233,312,80,18);
  
  strokeWeight(9);
  stroke(0);
  line(303,92,367,92);
  line(303,28,303,92);
  strokeWeight(4);
  line(315,28,315,50);
  line(315,50,368,50);
  strokeWeight(2);
  line(308,62,368,62);
  
  stroke(255);
  noFill() ;
  circle(314,73,14);
  
  fill(0);
  noStroke();
  ellipse(314,263,29,6);
  fill(200);
  circle (314,263,10);
  
  noFill();
  stroke(0);
  strokeWeight(0.5);
  circle (314,263,7);
  
  fill(#AF1F09);
  
  stroke(255);
   strokeWeight(2);
  circle (246,293,30);
  
  text("BOSCH",325,78);
  
  strokeWeight(3);
  stroke(#056BA0);
  line(45,56,49,60);
  line(55,56,59,60);
  line(65,56,69,60);
  line(75,56,79,60);
  line(85,56,89,60);
  line(95,56,99,60);
  line(105,56,109,60);
  
  
  
  
  println("x:");
  println(mouseX);
  println("y:");
  println(mouseY);
  
   
 
 /*void setup() {
  size(800, 400);
  imagen = loadImage("imagen.jpg");
  imagen.resize(400, 400);
}

void draw() {
  // nombre de la variable de la imagen, x , y

  image(imagen, 0, 0);

  image(imagen, width/2, 0); */


 

}
