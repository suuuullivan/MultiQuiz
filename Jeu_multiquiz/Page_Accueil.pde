class Page_Accueil extends Page{
  Bouton fermer;
  Bouton valider;
  Bouton classement;
  Bouton joueur;
  String nomJeu;
  PImage image;

  Page_Accueil() {
    super();
    fermer = new Bouton(width-75, 0+15, 50, 50, 255, 0, 0, "");
    joueur = new Bouton(width/2-150, height/2, 400, 50, 110, 110, 110, "");
    valider = new Bouton(width/2+300, height/2, 50, 50, 0, 255, 0, "");
    classement = new Bouton(width/2, height/3, 200, 30, 0, 0, 255, "Classement");
    image = loadImage("fond_ludique.jpg");
    image.resize(width, height);
    image.updatePixels();
  }
  
  @Override
  void affichage() {
    /*fond image*/
    background(image);

    /*bouton fermer*/
    stroke(255, 0, 0);
    strokeWeight(10);
    line(width-75, 15, width-25, 65);
    line(width-75, 65, width-25, 15);



    /*bouton joueur*/
    strokeWeight(0);
    textSize(28);
    joueur.afficheBouton();
    joueur.setText(width/2-145, height/2+33);

    /*bouton valider*/
    valider.afficheBouton();

    /*bouton classement*/
    classement.afficheBouton();
    classement.setText(classement.p.x, classement.p.y);
  }
}
