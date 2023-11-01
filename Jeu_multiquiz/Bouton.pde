class Bouton{
  Point p;
  int longueur, largeur;
  color couleur;
  String texte;
  boolean etat;
  
  Bouton(float cx, float cy, int lo, int la, int r, int g, int b, String t){
    this.p = new Point(cx, cy);
    this.longueur = lo;
    this.largeur = la;
    this.couleur = color(r, g, b);
    this.texte = t;
    this.etat = false;
  }
  
  void afficheBouton(){
    fill(couleur);
    rect(p.x, p.y, longueur, largeur);
    fill(0, 0, 0);
  }
  
  void setText(float x,float y){
    text(texte,x,y);
  }
  
}
