import 'dart:html';

void main(){
  List<String> _name = ['thanh', ' thien', 'tien','huan','kha'];
 List<Object> even=_name.where((element) => element.startsWith('t'),).toList();
print(even);
}