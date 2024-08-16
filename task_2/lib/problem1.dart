import 'dart:io';

void main(){
  int num = int.parse(stdin.readLineSync() ?? "10");
  print(getDivisors(num));


}

List<int> getDivisors(int num){
  List<int> divisors = [];
  for(int i = 2; i < num; i++){
    if(num % i == 0){
      divisors.add(i);
    }
  }
  return divisors;
}