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
    rect(p.getX(), p.getY(), longueur, largeur);
    fill(0, 0, 0);
    text(texte, (p.getX()+longueur)/2.5, (p.getY()+largeur)/2);
    
  }
  
}
