class pantallas{
  PImage inicio;
  PImage instrucciones;
  PImage ganador1;
  PImage ganador2;
  PImage empate;
  int cambio;
  
  pantallas(){
    this.inicio = loadImage("inicio.jpg");
    this.instrucciones = loadImage("instruccion.jpg");
    this.ganador1 = loadImage("ganador1.jpg");
    this.ganador2 = loadImage("ganador2.jpg");
    this.empate = loadImage("empate.jpg");
    this.cambio = 0;
  }
  
  void pantalla(){
    switch(cambio){
      case 0:
      image(this.inicio,0,0);
      if(mousePressed){
        cambio = 1;
      }
      break;
      
      case 1:
      image(instrucciones,0,0);
      if(key == ENTER){
        cambio = 2;
      }
      break;
      
      case 2:
      t.cronometro();
      juego.cancha();
      juego.p();
      rect(100,200,100,10);
      juego.balon();
      juego.turnos();
      juego.tiro();
      if(juego.p1 == 21){
        cambio = 3;
      }
      if(juego.p2 == 21){
        cambio = 4;
      }
      if(t.m >= 60){
        cambio = 5;
      }
      break;
      
      case 3:
      image(ganador1,0,0);
      if(key == 'a'){
        juego.p1 = 0;
        juego.p2 = 0;
        juego.turno = 1;
        juego.tur = false;
        juego.x = 520;
        juego.y = 275;
        juego.v = .5;
        this.cambio = 0;
        t.mm = 0;
        t.s = 0;
        t.m = 0;
      }
      if(key == 's'){
        exit();
      }
      if(key == 'd'){
        juego.p1 = 0;
        juego.p2 = 0;
        juego.turno = 1;
        juego.tur = false;
        juego.x = 520;
        juego.y = 275;
        juego.v = .5;
        this.cambio = 2;
        t.mm = 0;
        t.s = 0;
        t.m = 0;
      }
      break;
      
      case 4:
      image(ganador2,0,0);
      if(key == 'a'){
        juego.p1 = 0;
        juego.p2 = 0;
        juego.turno = 1;
        juego.tur = false;
        juego.x = 520;
        juego.y = 275;
        juego.v = .5;
        this.cambio = 0;
        t.mm = 0;
        t.s = 0;
        t.m = 0;
      }
      if(key == 's'){
        exit();
      }
      if(key == 'd'){
        juego.p1 = 0;
        juego.p2 = 0;
        juego.turno = 1;
        juego.tur = false;
        juego.x = 520;
        juego.y = 275;
        juego.v = .5;
        this.cambio = 2;
        t.mm = 0;
        t.s = 0;
        t.m = 0;
      }
      break;
      
      case 5:
      image(empate,0,0);
      if(key == 'a'){
        juego.p1 = 0;
        juego.p2 = 0;
        juego.turno = 1;
        juego.tur = false;
        juego.x = 520;
        juego.y = 275;
        juego.v = .5;
        this.cambio = 0;
        t.mm = 0;
        t.s = 0;
        t.m = 0;
      }
      if(key == 's'){
        exit();
      }
      if(key == 'd'){
        juego.p1 = 0;
        juego.p2 = 0;
        juego.turno = 1;
        juego.tur = false;
        juego.x = 520;
        juego.y = 275;
        juego.v = .5;
        this.cambio = 2;
        t.mm = 0;
        t.s = 0;
        t.m = 0;
      }
      break;
    }
  }
}
