class tiempo{
  int mm;
  int s;
  int m;
  tiempo(){
    this.s = 0;
    this.m = 0;
  }
  
  void cronometro(){
    if(mm <= 1000){
      mm = mm + 1;
    }
    else {
      s = s + 1;
      mm = 0;
    }
    if(s <= 59){
      s = s + 1;
      
    }
    else {
      m = m + 1;
      s = 0;
    }
  }
}
