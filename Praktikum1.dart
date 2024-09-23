// void main(){
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }

void main(){
  final list = List<dynamic>.filled(5,null);
  list[1] = "Muhammad Rildo Febrio Putra";
  list[2] = 2241720098; 
  assert(list[2] == 2241720098);
  print(list.length);
  print(list[2]);

  assert(list[1] == "Muhammad Rildo Febrio Putra");
  print(list[1]);
}