class Classement_Joueur{
  ArrayList <Joueur> classement;
  
  Classement_Joueur(){
    classement = new ArrayList<Joueur>();
  }
  
  boolean ajouterJoueur(String n,int s){
    classement.add(new Joueur(n,s));
    return true;
  }

  boolean triScore() {
    boolean echange;
    String tmpNom;
    int tmpScore;
    do {
      echange = false;
      for (int i = 0; i < classement.size() - 1; i++) {
        if (classement.get(i).score < classement.get(i + 1).score) {
          tmpScore = classement.get(i).score;
          tmpNom = classement.get(i).nom;
          classement.get(i).score = classement.get(i + 1).score;
          classement.get(i).nom = classement.get(i + 1).nom;
          classement.get(i + 1).score = tmpScore;
          classement.get(i + 1).nom = tmpNom;
          echange = true;
        }
      }
    } while (echange);
    return true;
  }

  
  boolean lectureFichierClassement(String nomFichier){
    String[] ligne = loadStrings(nomFichier);
    String[] mots;
    for(int i=1;i<ligne.length;i++){
      mots = split(ligne[i],';');
      ajouterJoueur(mots[0],Integer.parseInt(mots[1]));
    }
    return true;
  }
  
  void afficherJoueurs(){
    for(int i=0;i<classement.size();i++){
      println(classement.get(i).nom,classement.get(i).score);
    }
  }
  
}
