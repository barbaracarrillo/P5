class juego{
  
  PImage juego;
  PImage mike;
  PImage shaq;
  PImage ball;
  int p1;
  int p2;
  int turno;
  boolean tur;
  float x,y,px, py, v;
  boolean ti;
  
  juego(){
    this.juego = loadImage("juego.jpg");
    this.mike = loadImage("mike.png");
    this.shaq = loadImage("shaq.png");
    this.ball = loadImage("b.png");
    this.p1 = 0;
    this.p2 = 0;
    this.turno = 1;
    this.tur = false;
    this.x = 520;
    this.y = 275;
    this.v = .5;
    this.ti = false;
  }
  
  void cancha(){
    image(juego,0,0);
    fill(255);
    textSize(50);
    text(p2,525,75);
    fill(0);
    textSize(50);
    text(p1,525,215);
  }
  
  void p(){
    if(turno == 0){
      image(mike,500,275,75,200);
    }

    if(turno == 1){
      image(shaq,500,275,75,200);
    }
  }
  
  void balon(){
    image(ball,x,y,25,25);
  }
  
  void movimiento(){
    px += v*sin(2);
    py += v*cos(5);
    
    y = y-py;
    x = x-px/10;
    
    if(y < 25){
      y = y*(-1);
    }
  }
  
  void tiro(){
    turnos();
    if(key == ' '){
      movimiento();
    }
    
    if(this.x < 0 || this.y > height){
      this.x = 520;
      this.y = 275;
    }
  }
  
  void turnos(){
    if(turno == 0){
      if(x > 100 && x < 200 && y > 200 && y < 210){
        p1 = p1 + 1;
        turno = 0;
        tur = true;
      }
      else {
        turno = 1;
        tur = false;
      }
    }
    else if(turno == 1){
      if(x > 100 && x < 200 && y > 200 && y < 210){
        p2 = p2 + 1;
        turno = 1;
        tur = true;
      }
      else {
        turno = 0;
        tur = false;
      }
    }
  }
  
}
