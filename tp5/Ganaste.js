class Ganaste {
    mostrar() {
      background(0);
      textSize(32);
      fill(255);
      text("¡Ganaste!", width / 2 - 80, height / 2 - 30);
      textSize(20);
      text("Puntaje: " + puntaje, width / 2 - 45, height / 2 + 10);
      fill(0, 102, 153);
      rect(width / 2 - 50, height / 2 + 50, 100, 40);
      fill(255);
      textSize(16);
      text("Reiniciar", width / 2 - 35, height / 2 + 75);
    }
  
    reiniciarJuego() {
      if (
        mouseX > width / 2 - 50 &&
        mouseX < width / 2 + 50 &&
        mouseY > height / 2 + 50 &&
        mouseY < height / 2 + 90
      ) {
        puntaje = 0;
        estrellas = [];
        estadoJuego = "jugando";
      }
    }
  }
  