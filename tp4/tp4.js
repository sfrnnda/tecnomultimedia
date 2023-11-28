let pacmanX, pacmanY; 
let objectives = []; 
let score = 0; 
let gameStarted = false; 
let gameTime = 15; // Duración del juego en segundos
let timer; 
let startButton; 
let resetButton; 

function setup() {
  createCanvas(400, 400);
  pacmanX = width / 2;
  pacmanY = height / 2;
  
   for (let i = 0; i < 10; i++) {
    let objX = random(10,390);
    let objY = random(90,390);
    objectives.push({ x: objX, y: objY, eaten: false });
  }
  // botón de inicio
  startButton = createButton('Comenzar');
  startButton.position(width / 2 - 50, height / 2 + 20);
  startButton.mousePressed(startGame);
  
  //intrucciones 
  //textAlign(CENTER);
  background(0);
  fill(255);
  textSize(26);
  text('Bienvenido a Pac-Man',50,100);
  textSize(14);
  text('Usa las teclas de flecha para mover a Pac-Man.', 40,150);
  text('Come los objetivos antes de que se acabe el tiempo.',40,180);
}

function draw() {
 if (gameStarted) {
    background(0);
  
    // Pac-Man
    fill(255, 255, 0);
    arc(pacmanX, pacmanY, 40, 40, PI / 7, -PI / 7, PIE);
  
    // objetivos
    fill(0, 255, 0);
    for (let i = 0; i < objectives.length; i++) {
      if (!objectives[i].eaten) {
        ellipse(objectives[i].x, objectives[i].y, 20, 20);
      }
    }
  
    // Pac-Man ha comido un objetivo?
    for (let i = 0; i < objectives.length; i++) {
      if (!objectives[i].eaten && dist(pacmanX, pacmanY, objectives[i].x, objectives[i].y) < 20) {
        objectives[i].eaten = true;
        score++;
      }
    }
  
    // puntaje
    fill(255);
    textSize(24);
    text('Score: ' + score, 10, 30);
  
    //tiempo restante
    let timeRemaining = max(gameTime - Math.floor(millis() / 1000), 0);
    text('Time: ' + timeRemaining + 's', 10, 60);
    
      if (keyIsDown(LEFT_ARROW)) {
    pacmanX -= 3;
  } else if (keyIsDown(RIGHT_ARROW)) {
    pacmanX += 3;
  } else if (keyIsDown(UP_ARROW)) {
    pacmanY -= 3;
  } else if (keyIsDown(DOWN_ARROW)) {
    pacmanY += 3;
  }
  
    //perdido el juego?
    if (timeRemaining === 0) {
      fill(255);
      textSize(32);
      text('¡Perdiste!', width / 2 - 80, height / 2);
      noLoop();
    }
  
    // se han comido todos los objetivos?
    if(score === 10 ) {
      fill(255);
      textSize(32);
      text('¡Ganaste!', width / 2 - 80, height / 2);
      noLoop();
      
    }
  clearTimeout(timer);
  createResetButton();
  }
}

function startGame() {
  if (!gameStarted) {
    gameStarted = true;
    startButton.remove();
    // Inicia el temporizador solo si el juego ha comenzado
    timer = setTimeout(gameOver, gameTime * 1000);
  }
}

function gameOver() {
  if (score === 10) {
    fill(255);
    textSize(32);
    text('¡Ganaste!', width / 2 - 80, height / 2);
    createResetButton();
  } else {
    fill(255);
    textSize(32);
    text('¡Perdiste!', width / 2 - 80, height / 2);
    createResetButton();
  }
  
  clearTimeout(timer);
}

function createResetButton() {
  resetButton = createButton('Reiniciar');
  resetButton.position(300,350);
  resetButton.mousePressed(resetGame);
}

function resetGame() {
  score = 0;
  gameStarted = false;
  clear();
  resetButton.remove();
  setup();
  loop();
}
