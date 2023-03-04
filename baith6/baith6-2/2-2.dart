class _Animal{
  var id;
  String name;
  String color;
  _Animal(this.id, this.name, this.color){
  }
}
class _Cat extends _Animal{
  String sound;
  _Cat(var id, String name, String color, this.sound) : super(id, name, color);

  void printInfo(){
    print('ID: $id');
    print('Name: $name');
    print('Color: $color');
    print('Sound: $sound');
    print('');
  }
}
void main(){
  _Cat cat1 =  _Cat('C111', 'Tom', 'Yellow','Meow meow');
  _Cat cat2 =  _Cat('C222', 'Jerry', 'Black', 'brurh brurh lmao');
  _Cat cat3 =  _Cat('C333', 'Kitty', 'White', 'dảk dảk dảk');

  cat1.printInfo();
  cat2.printInfo();
  cat3.printInfo();
}