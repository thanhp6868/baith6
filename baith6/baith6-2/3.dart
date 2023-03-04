class camera{
  var _id;
  String _brand;
  String _color;
  int _prize;
  camera(this._id, this._brand, this._color, this._prize);

  //getter:
  get id => _id;
  String get brand => _brand;
  String get color => _color;
  int get price => _prize;
  
  //setter:
  set id( var value)=> this.id = value;
  set brand(String value) => this._brand=value;
  set color(String value) => this._color = value;
  set prize( value){
    if(value<0)
    {
      print("Price can\'t be less than 0");
    }
    else this._prize=value;
  }

  //print: 
  void printInfo(){
    print('ID: $_id');
    print('Brand: $_brand');
    print('Color: $_color');
    print('Price: $_prize');
    print('');
  }
}
void main(){
  camera cmr1 = camera('c001', 'Sony', 'Black', 10000000);
  camera cmr2 = camera('c002', 'Nikon', 'Grey', 12000000);
  camera cmr3 = camera('c003', 'Canon', 'Silver', 20000000);

  // print 
  cmr1.printInfo();
  cmr2.printInfo();
  cmr3.printInfo();

  //modify by setter
  cmr1.prize = 14000000;
  cmr2.color = 'White';
  cmr3._brand = 'Leica';
  //print
  print('Modified: ');
  print('');
  cmr1.printInfo();
  cmr2.printInfo();
  cmr3.printInfo();
}

