class Page_Classement extends Page{
  String texte;
  PImage image;
  Bouton fermer;
  Bouton retour;
  Page_Classement() {
    super();
    texte="Classement des joueurs : Top 10";
    image = loadImage("fond_ludique.jpg");
    image.resize(width, height);
    image.updatePixels();
  }
  @Override
  void affichage() {
    background(image);
    text(texte, width/2, height/4);
  }
}
