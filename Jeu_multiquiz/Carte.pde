class Carte { //<>//
  ArrayList<Departement> laFrance;

  Carte() {
    this.laFrance = new ArrayList<Departement>();
  }

  boolean ajoutDepartement(String n, String nb) {
    laFrance.add(new Departement(n, nb));
    return true;
  }

  boolean lectureFichierDepartement(String nomFichier) {
    String[] lignes = loadStrings(nomFichier);
    Departement departementActuel = null;
    for (String ligne : lignes) {
      String[] mots = split(ligne, " ");
      if (mots.length == 2) {
        String nomDepartement = mots[1];
        ajoutDepartement("departement", nomDepartement);
        departementActuel = laFrance.get(laFrance.size() - 1);
      } else if (departementActuel != null) {
        String[] coord = split(ligne, ",");
        float x = float(coord[0]);
        float y = float(coord[1]);
        departementActuel.ajoutPoint(x, y);
      }
    }
    return true;
  }

  boolean affichageCarte() {
    for (int i=0; i<laFrance.size(); i++) {
      laFrance.get(i).affichageDepartement();
    }
    return true;
  }
}
