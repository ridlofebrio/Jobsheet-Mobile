void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; 
  var names3 = {}; 

  names1.add('Muhammad Ridlo Febrio Putra');
  names1.add('2241720098');

  names2.addAll(names1);

  print(names1);
  print(names2);
  print(names3);
}
