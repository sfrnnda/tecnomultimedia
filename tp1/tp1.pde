
int screen = 0;
PImage taladroImage;
PImage taladroI;
PImage taladro2;
PImage taladro3;
PFont fuenteNueva;
int buttonX = 230;
int buttonY = 380;
int buttonWidth = 180;
int buttonHeight = 50;
float movX=1;
float movY=1;
String textpI= "TALADRO";
String textp1= "EL TALADRO, \nES UNA HERRMIENTA\n QUE SIRVE PARA HACER AGUJEROS \nEN MATERIALES DUROS\n MEDIANTE UNA BROCA ";
String textp2="EXISTEN\n MUCHOS TIPOS DE TALADROS \n E INFINIDADES DE CALIDADES . \n ALGUNOS DE LOS MAS\n COMUNES SON:\n LOS TALADROS ELECTRICOS \nCON CLABLE";
String textp3="ESTA COMPUESTO POR UNA CABEZA PLASTICA\n UN GATILLO PARA ACCIONARLO \n Y UN MADRIL METALICO PARA SUJETAR\n LAS BROCAS O MECHAS . ";
void setup() {
  size(640, 480);
  fuenteNueva=loadFont("Courier48.vlw");
  textFont(fuenteNueva);
  taladroImage = loadImage("taladro1.jpg");  
  taladroI = loadImage("taladroPinicio.jpg");
  taladro2 = loadImage("taladro2.jpg");
  taladro3 = loadImage("taladro3.jpg");
  taladroImage.resize(640,480);
  taladroI.resize(640,480);
  taladro2.resize(640,480);
  taladro3.resize(640,480);
}



void draw() {
  background(255);
  
  // Pantalla de inicio
  if (screen == 0) {
    image(taladroI, 0, 0);
    fill(255);
    textSize(60);
    textAlign(CENTER);
    text(textpI,320,200);
    fill(0);
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
    fill(255);
    textSize(32);
    text("Iniciar", width/2, buttonY + buttonHeight/2 +10);
    
  }
  // Pantalla 1
  else if (screen == 1) {
    image(taladroImage, 0, 0);
    fill(255);
    text( textp1, width/2,movY );
    movY=movY+1;
  }
  // Pantalla 2
  else if (screen == 2) {
    image(taladro2, 0, 0);
    textSize(32);
    fill(255);
    text(textp2, movX, 150);
    movX=movX+1;
  }
  // Pantalla 3
  else if (screen == 3) {
    image(taladro3, 0, 0);
    textSize(24);
    fill(0);
    text(textp3, 300, movY/1.5);
    movY=movY+1;
    
    // Botón de reinicio en la última pantalla
    
    fill(0);
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
    fill(255);
    textSize(32);
    textAlign(CENTER);
    text("Reiniciar", buttonX + buttonWidth/2, buttonY + buttonHeight/2 + 8);
  }
}

void mousePressed() {
  // Verificar si el botón de inicio fue presionado
  if (screen == 0 && mouseX >= buttonX && mouseX <= buttonX + buttonWidth && mouseY >= buttonY && mouseY <= buttonY + buttonHeight) {
    screen = 1; // Cambiar a la primera pantalla al hacer clic en el botón
  }
  // Cambiar a la siguiente pantalla al hacer clic en cualquier lugar de la pantalla actual
  else if (screen >= 1 && screen < 3) {
    screen++;
  }
  // Verificar si el botón de reinicio fue presionado en la última pantalla
  else if (screen == 3 && mouseX >= buttonX && mouseX <= buttonX + buttonWidth && mouseY >= buttonY && mouseY <= buttonY + buttonHeight) {
    screen = 0; // Reiniciar la presentación al hacer clic en el botón de reinicio
  }
}
