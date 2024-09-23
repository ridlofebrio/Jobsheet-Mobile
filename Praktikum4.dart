void main() {
  var list = [1, 2, 3];
var list2 = [0, ...list];
print(list);
print(list2);
print(list2.length);

list = [1, 2,];
print(list);
var list3 = [0, ...list];
var list4 = [2241720098, ...list3];
print(list3.length);
print(list4);

  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  String login = 'Staff';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
