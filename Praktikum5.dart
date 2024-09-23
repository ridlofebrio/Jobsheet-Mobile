void main() {
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // print(tukar((2, 3)));

  // (String, int) mahasiswa;
  // mahasiswa = ('Muhammad Ridlo Febrio', 2241720098);
  // print(mahasiswa);

  var mahasiswa2 =
      ('Muhammad Ridlo Febrio Putra', a: 2241720098, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
