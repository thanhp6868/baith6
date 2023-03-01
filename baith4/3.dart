
import 'dart:io';
void main(){
  List<dynamic> amount = [];
  print('Nhap cac khoan tien (nhap q de thoat):');
  String input;
  double _value;
  double total=0;
  do{
    input = stdin.readLineSync()!;
    if(input != 'q'){
      _value = double.parse(input);
      amount.add(_value);
    }
  }
  while(input != 'q');
  amount.forEach((m) => total += m);
  print(amount);
  print('Tong: $total');
}