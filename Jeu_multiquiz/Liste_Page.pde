class Liste_Page{
  ArrayList<Page> liste;
  Liste_Page(){
    liste = new ArrayList<Page>();
  }
  boolean ajoutPage(Page p){
    liste.add(p);
    return true;
  }
}
