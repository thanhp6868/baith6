void main(){
  Map<String, dynamic> _info={
    'name': 'Thanh',
    'phone':01326464,
    
  };
  var length4 = _info.keys.where((key) => key.length ==4);
  print(length4);
}