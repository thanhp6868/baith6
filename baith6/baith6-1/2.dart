
class House{
  var id;
  String? name;
  var prize;
  House(var id, String name, var priz)
  {
      this.id = id;
      this.name = name;
      this.prize = priz;
  }
  void printInfo(){
    print('ID: $id');
    print('Name: $name');
    print('Ram: $prize');
    print('');
  }
}
void main(){
  House hous1 = new House('H111', 'House Name 1', 'Prize 1');
  House hous2 = new House('H222', 'House Name 2', 'Prize 2');
  House hous3 = new House('H333', 'House Name 3', 'Prize 3');
  hous1.printInfo();
  hous2.printInfo();
  hous3.printInfo();
}