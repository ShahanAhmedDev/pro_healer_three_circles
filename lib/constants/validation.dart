class Validation{
  int size=6;
  void  password(check){
    String? check;
    for(int a=1; a>=size; a++) {
      if (check?.length == size) {
        return print("true");
      }
      else {
        return print("false");
      }
    }
  }
}