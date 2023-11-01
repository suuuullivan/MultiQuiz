Carte c=null;
Liste_Page lp=null;
Page_Accueil pa=null;
Page_Classement pc=null;
PImage image;
void setup() {
  fullScreen();
  lp = new Liste_Page();
  c = new Carte();
  pa = new Page_Accueil();
  pc = new Page_Classement();
  lp.ajoutPage(pa);
  lp.ajoutPage(pc);
  lp.liste.get(0).etat=true;
  //lp.liste.get(0).affichage();
}

void draw() {
  for (int i=0; i<lp.liste.size(); i++) {
    if (lp.liste.get(i).etat==true) {
      lp.liste.get(i).affichage();
    }
  }
}

void mouseClicked() {
  if (lp.liste.get(0).etat==true) {
    if (mouseX >= pa.fermer.p.x && mouseX <= (pa.fermer.p.x+pa.fermer.longueur) && mouseY >= pa.fermer.p.y && mouseY <= (pa.fermer.p.y+pa.fermer.largeur)) {
      exit();
    }
    if (mouseX >= pa.joueur.p.x && mouseX <= (pa.joueur.p.x+pa.joueur.longueur) && mouseY >= pa.joueur.p.y && mouseY <= (pa.joueur.p.y+pa.joueur.largeur)) {
      if (pa.joueur.etat) {
        pa.joueur.etat=false;
      } else {
        pa.joueur.etat=true;
      }
    }
    if (mouseX >= pa.classement.p.x && mouseX <= (pa.classement.p.x+pa.classement.longueur) && mouseY >= pa.classement.p.y && mouseY <= (pa.classement.p.y+pa.classement.largeur)) {
      lp.liste.get(0).etat=false;
      lp.liste.get(1).etat=true;
    }
  }
}

void keyPressed() {
  if (lp.liste.get(0).etat==true) {
    if (pa.joueur.etat) {
      if (keyCode == 8) {
        if (pa.joueur.texte.length()>=1) {
          pa.joueur.texte=pa.joueur.texte.substring(0, pa.joueur.texte.length()-1);
        }
      }
      if (keyCode >= 32 && keyCode <=126) {
        pa.joueur.texte+=key;
      }
    }
  }
}
