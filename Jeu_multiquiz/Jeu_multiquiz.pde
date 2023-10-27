Bouton b=null;
void setup(){
  println("trd");
  size(300,300);
  b = new Bouton(10,10,200,120,200,100,100,"Coucou");
}
void draw(){
  b.afficheBouton();
}
