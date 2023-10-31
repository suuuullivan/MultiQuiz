Carte c=null;

void setup(){
  fullScreen();
  c = new Carte();
  c.lectureFichierDepartement("departements.txt");
  for(int i=0;i<c.laFrance.get(1).coordonnee.size();i++){
    println(c.laFrance.get(3).coordonnee.get(i).x,c.laFrance.get(1).coordonnee.get(i).y);
  }
  
  
}

void draw(){
  /*
  fill(255);
  stroke(0);
  strokeWeight(2);
  c.affichageCarte();
  */
}
