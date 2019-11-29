pantallas pantalla;
juego juego;
tiempo t;

void setup(){
  size (700,500);
  pantalla = new pantallas();
  juego = new juego();
  t = new tiempo();
}

void draw(){
  pantalla.pantalla();
}
