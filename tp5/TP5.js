//sofia soto quevedo 
//92833/2
//https://youtu.be/hxJxjWqTul0


let personaje;
let estrellas = [];
let puntaje = 0;
let vidas = 3;
let estadoJuego = "jugando";
let ganaste;
let perdiste;

function setup() {
  createCanvas(800, 800);
  fondo = loadImage('assets/fondo2.jpg');
  personaje = new Personaje();
  ganaste = new Ganaste();
  perdiste = new Perdiste();
}

function draw() {
  background(0);
  image(fondo, 0, 0, width, height);
  if (estadoJuego === "jugando") {
    if (frameCount % 60 === 0) {
      estrellas.push(new Estrella());
    }

    personaje.mostrar();
    personaje.mover(keyIsDown(LEFT_ARROW) - keyIsDown(RIGHT_ARROW));

    for (let i = estrellas.length - 1; i >= 0; i--) {
      estrellas[i].mostrar();
      estrellas[i].caer();

      if (personaje.colision(estrellas[i])) {
        estrellas.splice(i, 1);
        puntaje += 100;
      } else if (estrellas[i].y > height) {
        estrellas.splice(i, 1);
        vidas--;
      }
    }

    textSize(24);
    fill(255);
    text("Puntaje: " + puntaje, 10, 30);
    text("Vidas: " + vidas, 10, 60);

    if (vidas <= 0) {
      estadoJuego = "perdiste";
    }

    if (puntaje >= 1000) {
      estadoJuego = "ganaste";
    }
  } else if (estadoJuego === "ganaste") {
    ganaste.mostrar();
  } else if (estadoJuego === "perdiste") {
    perdiste.mostrar();
  }
}

function mousePressed() {
  if (estadoJuego === "ganaste") {
    ganaste.reiniciarJuego();
  } else if (estadoJuego === "perdiste") {
    perdiste.reiniciarJuego();
  }
}
