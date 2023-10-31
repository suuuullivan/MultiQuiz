class Departement{
  String nom;
  String nombre;
  ArrayList <Point> coordonnee;
  
  Departement(String n, String nb){
    this.nom = n;
    this.nombre = nb;
    this.coordonnee = new ArrayList<Point>();
  }
  
  boolean ajoutPoint(float x, float y){
    this.coordonnee.add(new Point(x, y));
    return true;
  }
  
  boolean affichageDepartement(){
    beginShape();
    for(int i=0;i<coordonnee.size();i++){
      vertex(coordonnee.get(i).x*1.5,coordonnee.get(i).y*1.5);
    }
    endShape(CLOSE); 
    return true;
  }
  
}
