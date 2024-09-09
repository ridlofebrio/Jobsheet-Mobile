void main(){

  String nama = "Muhammad Ridlo Febrio Putra";
  String nim = "2241720098";

   bool isPrime(int number) {
    if (number < 2) {
      return false;
    }
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }
  
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print("$i  Nama: $nama, NIM: $nim");
    }
  }
}