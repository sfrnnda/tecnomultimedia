//no subi video, porque no tengo como, le mande un mensaje por priv
// Variables

//Elipse
int miCirculo;
float posX,posY,tamX,tamY;


boolean keyPressed= true;
int PantallaPrincipal= 0;
int pantallaActual = 0;
int totalPantallas = 12;

// Dimensiones de la pantalla
int anchoPantalla;
int altoPantalla;

// Dimensiones del botón de inicio
int anchoBoton = 150;
int altoBoton = 50;
int posXBoton;
int posYBoton;
//Dimensiones boton de atras 

//Dimenciones boton A1
int anchoAuno=45;
int altoAuno= 45;
int posXAuno=90; //rect (90, 530, 45,45)
int posYAuno=530;
//Dimenciones botonB1
int anchoBuno=45;
int altoBuno= 45;
int posXBuno=450;
int posYBuno=530;
//boton fin
int anchoFin=80;
int altoFin= 30;
int posXFin=250; //rect(250,525,80,30)
int posYFin=525;


// Arreglo de imágenes para cada pantalla
PImage[] imagenes = new PImage[totalPantallas];
float opacidad=  80;

// Arreglo de texto para cada pantalla
String[] textoPantallas = new String[totalPantallas];

// Control de cuenta regresiva
boolean iniciarCuentaRegresiva = false;
int tiempoRestante = 3;
int tiempoInicial;

void setup() {

  // Tamaño de la ventana de la aplicación
  size(600, 600);
  
  
  posX=150;
  posY=30;
  tamX=30;
  tamY=45;
  
  // Inicializar dimensiones de la pantalla
  anchoPantalla = width;
  altoPantalla = height;
 
  
  
  
  // Calcular posición del botón de inicio
  posXBoton = anchoPantalla / 2 - anchoBoton / 2;
  posYBoton = altoPantalla / 2 - altoBoton / 2;
  
  // Cargar las imágenes para cada pantalla
  for (int i = 0; i < totalPantallas; i++) {
    imagenes[i] = loadImage("imagen_" + i + ".jpg");
  }
    // texto de cada pantalla
  textoPantallas[1] = " Erase una ves un carpintero llamado Guepetto, \n que decidio construir un muñeco de madera al que llamo pinocho, \norgulloso de como le había quedado.\n Deseaba demasiado que este tuviese vida \n y fuese un niño de verdad.\n Un hada le concedió el deseo\n por ser toda su vida muy buena persona \ny asi durante la noche le dio vida a pinocho. \n Al siguiente dia en el taller Guepetto vio a pinocho con vida, este lo saludo, \n Gueppeto pensó que estaba soñando, no lo podía creer. ";
  textoPantallas[2] = "Gepetto quería cuidar a su hijo como habría hecho\n con cualquiera que no fuese de madera. \nPinocho tenía que ir al colegio, aprender y conocer a otros niños\n. Pero el carpintero no tenía dinero,\n y tuvo que vender su abrigo para poder comprar una cartera y los libros.\nA partir de aquél día, Pinocho empezó a ir al colegio\n con la compañía de un grillo, que le daba buenos consejos. \nPero, como la mayoría de los niños, Pinocho prefería ir a divertirse \nque ir al colegio a aprender, por lo que no siempre hacía caso del grillo.";
  textoPantallas[3] = "Un día, Pinocho se fue al teatro de títeres para escuchar una historia. \n Cuando le vio, el dueño del teatro quiso quedarse con él:\n-¡Oh, Un títere que camina por si mismo, y habla!\n Con él en la compañía, voy a hacerme rico dijo el titiritero, \npensando que Pinocho le haría ganar mucho dinero.\nA pesar de las recomendaciones del pequeño grillo,\n que le decía que era mejor irse de allí, Pinocho decidió quedarse en el teatro\n, pensando que así podría ganar dinero para comprar un abrigo nuevo a Gepetto, \n que había vendido el suyo para comprarle los libros.\n Y así hizo, durante todo el día estuvo actuando para el titiritero. \nPasados unos días, cuando quería volver a casa, \nel dueño del teatro de marionetas le dijo que no podía irse,\n que tenía que quedarse con él.\nPinocho se echó a llorar tan desconsolado diciendo que quería volver a casa \nque el malvado titiritero lo encerró en una jaula para que no pudiera escapar.";
  textoPantallas[4] = "Por suerte, su hada madrina que todo lo sabe,\n apareció durante la noche y lo liberó de su cautivério \nabriendo la puerta de la jaula con su varita mágica.\n Antes de irse, Pinocho tomó de encima de la mesa las\n monedas que había ganado actuando. \nDe vuelta a casa Pinocho volvió a tener las prejas normales, \n cuando de repente, el grillo y Pinocho, \n se cruzaron con dos astutos ladrones que convencieron al niño\n de que si enterraba las monedas en un campo cercano, \n llamado el campo de los milagros, el dinero se multiplicaría y se haría rico. \nConfiando en los dos hombres, y sin escuchar al grillo\n que le advertía del engaño, Pinocho enterró las monedas \n y se fue. Rápidamente,los dos ladrones se llevaron las monedas \n y Pinocho tuvo que volver a casa sin monedas";
  textoPantallas[5] = "Durante los días que Pinocho había estado fuera, \n Gepetto se había puesto muy triste y, preocupado, \n había salido a buscarle por todos los rincones. \n Así, cuando Pinocho y el grillo llegaron a casa, \nse encontraron solos. Por suerte, \n el hada que había convertido a Pinocho en niño, \n les explicó que el carpintero había salido dirección al mar para buscarles. \nPinocho y grillo decidieron ir a buscarle, \npero se cruzaron con un grupo de niños: \n- ¿Dónde vais?- preguntó Pinocho. \n - Al País de los Juguetes - respondió un niño\n -. ¡Allí podremos jugar sin parar! ¿Quieres venir con nosotros? \n- ¡Oh, no, no, no!- le advirtió el grillo-. \nRecuerda que tenemos que encontrar a Gepetto, \n que está triste y preocupado por ti. \n- ¡Sólo un rato!- dijo Pinocho- Después seguimos buscándole.";
  textoPantallas[6] = "pinocho se fue con los niños y se divirtió mucho, \n pero a medida que pasaban las horas en el país de los juguetes, \npinocho se iba convirtiendo en burro, cuando se dio cuenta se puso a llorar.\n Al oírlo el hada se compadeció se de él y le devolvió su aspecto \nadvirtiéndole que a partir de ahora cada vez que mienta le crecerá la nariz.\nPinocho y el grillo salieron rápidamente en busca de Gepetto.";
  textoPantallas[7] = "Guepetto había ido en busca de pinocho en un pequeño bote, \nluego fue tragado por una ballena. \n Desesperados pinocho y el grillo al ver esto fueron al rescate. \n Cuando pinocho vio a la ballena le pidió porfavor que le devoviera a su papa, \n pero la ballena abrió la boca y también se los trago. \n Por fin estaban todos juntos. \n A pinocho se le ocurrió hacer una fogata \ndentro de esta lo que hizo que la ballena estornudara\n y asi salieron volando ";
  textoPantallas[8] = "Una vez a salvo pinocho le conto todo lo sucedido a Guepetto \ny le pidió perdón A Gepetto, a pesar de haber sufrido mucho los últimos días,\n sólo le importaba volver a tener a su hijo con él. \nPor lo que le propuso que olvidaran todo y volvieran a casa \nPasado un tiempo, Pinocho demostró que había\n aprendido la lección y se portaba bien.\nComo recompensa por su comportamiento, \nel hada decidió convertir a Pinocho en un niño de carne y hueso. \nA partir de aquél día, Pinocho y Gepetto fueron\n muy felices como padre e hijo.";
  textoPantallas[9] = "El hada cuando lo ve convertido en burro \ndecide dejarlo con esa forma para siempre, \npara que aprenda la leccion por haberse portado mal\n y ser mal niño";
  textoPantallas[10] = "Asi pasaron los dias en donde pinocho no pudo escapar.\nTuvo mucho intentos fallidos\n pero nunca lo consiguio, la pena y la culpa lo consumia\n pero despues de un tiempo empezo a acostumbrarse a la vida del teatro\n y asi fue como de a poco se fue olvidando de guepetto \n y asi  empezo su vida en el teatro";
  textoPantallas[11] = "Guepetto desperto de su sueño\n y muy desilusionado ve que su muñeco aun era eso\n solo un muñeco de madera sin vida ";
   
   
   
   
} 




void draw() {
  

  
  
    // Cambiar el color del texto cuando el mouse está sobre el botón

 
    println("Pantalla actual: " + pantallaActual);
    println(mouseX + " : " + mouseY);  
    background(255);
  
  dibujarBotonVolver();
 
// Mostrar la pantalla actual
  mostrarPantalla(pantallaActual);
  
  // Mostrar el botón de inicio en la primera pantalla
  if (pantallaActual == 0) {
    mostrarBotonInicio();   
  }
  
  
  // Control de cuenta regresiva
  if (iniciarCuentaRegresiva) {
    int tiempoTranscurrido = millis() - tiempoInicial;
    int tiempoFaltante = tiempoRestante - tiempoTranscurrido / 1000;
    
    if (tiempoFaltante > 0) {
      textSize(32);
      //textAlign(CENTER, CENTER);
      fill(255);
      text ("Comenzaremos en... " + tiempoFaltante , 320, 400);
    } else {
      pantallaActual++;
      iniciarCuentaRegresiva = false;
    }
  }
}


void resetValues (){
 PantallaPrincipal= 0;
 pantallaActual = 0;
 totalPantallas = 12;
  keyPressed= false;

  
}
void mousePressed() { 
 // rect(250,525,80,30)
   if(mouseX >= 250 && mouseX <= 330 && mouseY >= 525 && mouseY <= 555){
     exit();
   
   } 
 
  //rect(100, 500, 80, 35);
else if(pantallaActual>= 1 && mouseX>= 100 && mouseX <=180 && mouseY >= 500 && mouseY <= 535 ){
   pantallaActual--;
}
  //rect(10, 10, 80, 30);
   else  if (mouseX >= 10 && mouseX <= 90 && mouseY >= 10 && mouseY <= 40) {
    // Cambia a la pantalla anterior al presionar el botón de retroceso
   resetValues();  
   
   
    }
  // Verificar si se hizo clic en el botón de inicio
  else if (pantallaActual == 0 && mouseX > posXBoton && mouseX < posXBoton + anchoBoton &&
      mouseY > posYBoton && mouseY < posYBoton + altoBoton) {
    iniciarCuentaRegresiva = true;
    tiempoInicial = millis();
  }
  
  // Avanzar a la siguiente pantalla al hacer clic en cualquier otra parte
  else if (pantallaActual > 0 && !iniciarCuentaRegresiva) {
    pantallaActual++;
  }
  
  // Reiniciar la pantalla cuando se alcanza la última
  if (pantallaActual > 11) {
    pantallaActual = 0;
  }
   
  
}

void mostrarPantalla(int pantalla) {
  // Personaliza la apariencia de cada pantalla aquí
  
  // Ejemplo: Pantalla de título
  if (pantalla == 0) {
    textSize(32);
    textAlign(CENTER, CENTER);
    fill(0);
   
     image(imagenes[0], 0, 0, width, height);
     noTint();  // Restaurar el tinte
     
  }
  
  // Pantalla 1
  else if (pantalla == 1) {
    // Mostrar imagen de la pantalla 1
    image(imagenes[1], 0, 0, width, height);
    tint(255, opacidad); 
     textSize(18);
    textAlign(CENTER, CENTER);
    text("Tecla",110,520);
    text("Tecla",470,520);
    fill(0);
    text(textoPantallas[1], width/2, height/2);
    dibujarBotonVolver();
      mostrarBotonAuno();
    mostrarBotonBuno();
    if(keyPressed==true&& key=='B'){
       pantallaActual=11;
       }
       if(keyPressed==true && key=='A'){
         pantallaActual=2;
       }
    
  }
  
  // Pantalla 2
  else if (pantalla == 2) {
    //keyPressed= false;
      if( keyPressed){
        if(key=='X'){
   posX= random (width);
}
   if(key=='Y'){
   posY= random (height);
        }
  }
   fill(0);
  ellipse(posX,posY,tamX,tamY);
    // Mostrar imagen de la pantalla 2
    image(imagenes[2], 0, 0, width, height);
    textSize(18);
    textAlign(CENTER, CENTER);
    fill(0);
    text(textoPantallas[2], width/2, height/2);
     dibujarBotonVolver();
     
  
       
  }
   else if (pantalla == 3) {
    // Mostrar imagen de la pantalla 3
    image(imagenes[3], 0, 0, width, height);
   
    textSize(18);
    textAlign(CENTER, CENTER);
    text("Tecla",110,520);
    text("Tecla",470,520);
    dibujarBotonVolver();
    fill(0);
    text(textoPantallas[3], width/2, height/2);
       mostrarBotonAuno();
    mostrarBotonBuno();
     if(keyPressed==true&& key=='B'){
       pantallaActual=10;
       }
       if(keyPressed==true && key=='A'){
         pantallaActual=4;
       }
    
    
    
  }
   else if (pantalla == 4) {
    // Mostrar imagen de la pantalla 4
    image(imagenes[4], 0, 0, width, height);
     textSize(18);
    textAlign(CENTER, CENTER);
    fill(0);
    text(textoPantallas[4], width/2, height/2);
    dibujarBotonVolver();
 
  }
  else if (pantalla == 5) {
    // Mostrar imagen de la pantalla 5
    image(imagenes[5], 0, 0, width, height);
    textSize(18);
    textAlign(CENTER, CENTER);
    fill(0);
    text(textoPantallas[5], width/2, height/2);
    dibujarBotonVolver();
    
  }
  else if (pantalla == 6) {
    // Mostrar imagen de la pantalla 6
    image(imagenes[6], 0, 0, width, height);
     textSize(18);
    textAlign(CENTER, CENTER);
    text("Tecla",110,520);
    text("Tecla",470,520);
    fill(0);
    text(textoPantallas[6], width/2, height/2);
    dibujarBotonVolver();
      mostrarBotonAuno();
    mostrarBotonBuno();
     if(keyPressed==true&& key=='B'){
       pantallaActual=9;
       }
       if(keyPressed==true && key=='A'){
         pantallaActual=7;
       }
    
  }
  else if (pantalla == 7) {
    // Mostrar imagen de la pantalla 7
    image(imagenes[7], 0, 0, width, height);
     textSize(18);
    textAlign(CENTER, CENTER);
    fill(0);
    text(textoPantallas[7], width/2, height/2);
    dibujarBotonVolver();
  }
  else if (pantalla == 8) {
    // Mostrar imagen de la pantalla 8
    image(imagenes[8], 0, 0, width, height);
     textSize(18);
    textAlign(CENTER, CENTER);
    fill(0);
    text(textoPantallas[8], width/2, height/2);
    dibujarBotonVolver();
    mostrarBotonFin();
  }
  else if (pantalla == 9) {
    // Mostrar imagen de la pantalla 9
    image(imagenes[9], 0, 0, width, height);
      textSize(18);
    textAlign(CENTER, CENTER);
    fill(#FF0808);
    text(textoPantallas[9], width/2, height/2);
    dibujarBotonVolver();
    mostrarBotonFin();
  }
  else if (pantalla == 10) {
    // Mostrar imagen de la pantalla 10
    image(imagenes[10], 0, 0, width, height);
     textSize(18);
    textAlign(CENTER, CENTER);
    fill(#FF0808);
    text(textoPantallas[10], width/2, height/2);
    dibujarBotonVolver();
    mostrarBotonFin();
  }
  else if (pantalla == 11) {
    // Mostrar imagen de la pantalla 11
    image(imagenes[11], 0, 0, width, height);
     textSize(18);
    textAlign(CENTER, CENTER);
    fill(#FF0808);
    text(textoPantallas[11], width/2, height/2);
    dibujarBotonVolver();
    mostrarBotonFin();
    
  }
   
  
  

  
}
void dibujarBotonVolver() { //boton salir ;)
  noStroke();
  fill(0);
  rect(10, 10, 80, 30);
  fill(255);
  textAlign(CENTER, CENTER);
  text("SALIR", 50, 23);
  //pantallaActual=PantallaPrincipal;
}


void mostrarBotonInicio() {

  // Estilo del botón
  fill(#DB5454);
  rect(posXBoton, posYBoton, anchoBoton, altoBoton);
  
  // Texto del botón
  fill(255);
  textSize(16);
  textAlign(CENTER, CENTER);
  text("COMENCEMOS", posXBoton + anchoBoton / 2, posYBoton + altoBoton / 2);
  
}
void mostrarBotonAuno() { //tecla jj

  // Estilo del botón
  fill(#3CBF3C); //#DB5454 VERDE
  rect(posXAuno, posYAuno, anchoAuno, altoAuno);
  fill(255);
  textSize(30);
  textAlign(CENTER, CENTER);
  text("A", 112,545);
 
}
void mostrarBotonBuno() { //botonB , que no es boton porque no me resulto(teclab )

  // Estilo del botón
  fill(#DB5454); //ROJO
  rect(posXBuno, posYBuno, anchoBuno, altoBuno);
  fill(255);
  textSize(30);
  textAlign(CENTER, CENTER);
  text("B", 472,545);
 
}
void mostrarBotonFin() { //estos solo los mostre en las pantallas de finales, cierran el programa

  // Estilo del botón
  fill(#DB5454); //ROJO
  rect(posXFin, posYFin, anchoFin, altoFin);
  fill(255);
  textSize(30);
  textAlign(CENTER, CENTER);
  text("FIN", 290,535);
 
}
