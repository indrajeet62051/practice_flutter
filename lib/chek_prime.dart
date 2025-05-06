void main(){

  List<int> show_dta= [];
  for(int i = 0 ; i <= 1000 ;i++){

    int n;
    int sum = 0;
    for (n=1;n<=(i/2) ;n++){
      if(i%n ==0){
        sum= sum+n;
      }
    }
    if(sum == i){
      show_dta.add(i);
    }
  }

  print("$show_dta");


}