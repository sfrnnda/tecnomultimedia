float angulo = 0;
float velocidad = 0.02;
float radioCuadrado;
boolean keyPressedk= false;
PImage cuadrado;
float inicualVel= velocidad;
void setup() {
  size(800, 400); // Tamaño de la ventana
  noStroke(); // Sin bordes en las formas
  radioCuadrado = 120; // Radio del cuadrado exterior
  frameRate(50); // Velocidad de animación cuadrados 
   //cuadrado = loadImage("cuadrado.jpg"); 
   //cuadrado.resize (200,400);
   frameRate(50);
}

void draw() {
  //image(cuadrado,0,0);
  // Dibujar patrón de cuadrícula  en el fondo
  int tamanoCuadrado = 15; // Tamaño de los cuadrados
  int valorGris = 0; // Valor de gris inicial
  //rotation= frameRate;
  
 if(keyPressedk==true&& key=='k'){
       rotate(radians(velocidad));
       }
  for (int y = 0; y < height; y += tamanoCuadrado) {
    for (int x = 0; x < width; x += tamanoCuadrado) {
      fill(valorGris); // Rellenar con el valor de gris
      rect(x, y, tamanoCuadrado, tamanoCuadrado); // Dibujar cuadrado
      valorGris = 255 - valorGris; // Invertir el valor de gris
    }
    valorGris = 255 - valorGris; // Cambiar el valor de gris al comenzar una nueva fila
  }
 
  // Mover el origen al centro
  translate(580,160);

  // Dibujar patrón de cuadrados en movimiento
  int numCuadradosCentro = 15; // Número de cuadrados en el patrón
  float desplazamiento = TWO_PI / numCuadradosCentro; // Desplazamiento angular entre cuadrados
  
  for (int i = 0; i < numCuadradosCentro; i++) {
    // Calcular posición del cuadrado
    float x = cos(angulo + i * desplazamiento) * radioCuadrado;
    float y = sin(angulo + i * desplazamiento) * radioCuadrado;

    // Calcular tamaño del cuadrado
    float size = map(sin(angulo), -1, 1, 20, 45); //desde que num hasta que num

    // Calcular color del cuadrado en escala de grises
    float grayColor = map(i, 0, numCuadradosCentro, 0, 255);

    // Dibujar cuadrado
    fill(grayColor);

    rect(x, y, size, size);
  }

  // Actualizar el ángulo de rotación
  angulo += velocidad;
}
 void keyPressed(){
   if (key== 'k'|| key == 'K'){
     keyPressedk = true;
     velocidad= velocidad*2;
   }
   if (key=='l'||key=='L'){
     keyPressedk =false;
     velocidad= inicualVel;
   }
  }
  
