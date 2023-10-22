class Personaje {
    constructor() {
      this.x = width / 2;
      this.y = height - 95;
      this.ancho = 120; // Ancho del cuadrado
      this.alto = 120;  // Alto del cuadrado
      this.sprite = loadImage('pinocco.png'); // Reemplaza 'nombre_del_archivo_del_sprite.png' por el nombre de tu archivo de sprite
    }
  
    mostrar() {
      // Dibuja el cuadrado como el cuerpo del personaje
      fill(255); // Color blanco (puedes cambiar el color)
      //rect(this.x, this.y, this.ancho, this.alto); // Dibuja el cuadrado
  
      // El sprite se muestra encima del cuadrado como una máscara
      image(this.sprite, this.x, this.y, this.ancho, this.alto); // Ajusta el tamaño del sprite según el cuadrado
    }
  
    mover(direccion) {
      this.x += direccion * 10;
      this.x = constrain(this.x, 0, width - this.ancho); // Ajusta el límite derecho según el tamaño del cuadrado
    }
  
    colision(estrella) {
      // Verifica la colisión del cuadrado con una estrella
      let left = this.x;
      let right = this.x + this.ancho;
      let top = this.y;
      let bottom = this.y + this.alto;
  
      let estrellaX = estrella.x;
      let estrellaY = estrella.y;
  
      if (right > estrellaX && left < estrellaX + estrella.diametro && bottom > estrellaY && top < estrellaY + estrella.diametro) {
        return true;
      }
  
      return false;
    }
  }
  