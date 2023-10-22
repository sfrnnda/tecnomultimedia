class Estrella {
    constructor() {
      this.x = random(width);
      this.y = 0;
      this.diametro = 30;
      this.velocidad = 5;
    }
  
    mostrar() {
      fill(255, 255, 0);
      ellipse(this.x, this.y, this.diametro);
    }
  
    caer() {
      this.y += this.velocidad;
    }
  
    tocoPersonaje(personaje) {
      let distancia = dist(this.x, this.y, personaje.x + personaje.sprite.width / 8, personaje.y + personaje.sprite.height / 8);
      return distancia < this.diametro / 2 + personaje.sprite.width / 8;
    }
  }
  