## Praktikum 1
 1. Ketik atau salin kode program berikut ke dalam void main().

```dart
void main(){
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}
```
2. Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!
```
1
2
3
```
jawaban : <br>
Kode di atas mendefinisikan fungsi utama dalam bahasa Dart dengan sebuah list (daftar) berisi tiga elemen: [1, 2, 3]. Dua pernyataan assert digunakan untuk memastikan bahwa panjang daftar adalah 3 dan nilai elemen kedua adalah 2. Kode ini kemudian mencetak panjang daftar dan nilai elemen kedua. Setelah itu, elemen kedua dari daftar diubah menjadi 1, dan program memeriksa bahwa perubahan tersebut berhasil sebelum mencetak nilai elemen kedua yang baru.

3. Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

```dart
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
```
## Praktikum 2
1. Ketik atau salin kode program berikut ke dalam fungsi main().
```dart
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}
```
2. Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
```
{fluorine, chlorine, bromine, iodine, astatine}
```
jawaban : Pada code tersebur semua isi array akan ditampilkan dan tidak ada error

3. Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda. 
```dart
var names1 = <String>{};
Set<String> names2 = {}; // This works, too.
var names3 = {}; // Creates a map, not a set.

print(names1);
print(names2);
print(names3);
```
    {fluorine, chlorine, bromine, iodine, astatine}
    {}
    {}
    {}
jawaban : array tidak memiliki isi sehingga perlu .add() untuk menisi array
```dart
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
```
    {fluorine, chlorine, bromine, iodine, astatine}
    {Muhammad Ridlo Febrio Putra, 2241720098}
    {Muhammad Ridlo Febrio Putra, 2241720098}
    {}

## Praktikum 3
1. Ketik atau salin kode program berikut ke dalam fungsi main().
```dart
void main(){
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

print(gifts);
print(nobleGases);
}
```
2. Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
```
    {first: partridge, second: turtledoves, fifth: 1}
    {2: helium, 10: neon, 18: 2}
```
jawaban :
<br> Kode tersebut mendefinisikan fungsi utama dalam bahasa Dart yang berisi dua map atau peta. Peta pertama, gifts, menggunakan key bertipe String yang dihubungkan dengan nilai String dan int, mewakili hadiah dengan urutan tertentu. Peta kedua, nobleGases, menggunakan key bertipe int yang dihubungkan dengan nilai berupa String dan int, menggambarkan elemen gas mulia. Kode kemudian mencetak isi dari kedua map tersebut.

3. Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```dart
var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
```
    {first: partridge, second: turtledoves, fifth: golden rings}
    {2: helium, 10: neon, 18: argon}

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.<br>
yang terjadi adalah terjadi pergantian nilai value pada key fifth dan 18 

<br>
Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!

```dart
var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['sixth'] = 'Muhammad Ridlo Febrio Putra';
  gifts['seventh'] = '2241720098';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[19] = 'Muhammad Ridlo Febrio Putra';
  nobleGases[20] = '2241720098';


  mhs1['nama'] = 'Muhammad Ridlo Febrio Putra';
  mhs1['nim'] = '2241720098';
  mhs2[1] = 'Muhammad Ridlo Febrio Putra';
  mhs2[2] = '2241720098';
  
  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
  ```
  hasil 
  ```
  {first: partridge, second: turtledoves, fifth: golden rings, sixth: Muhammad Ridlo Febrio Putra, seventh: 2241720098}
{2: helium, 10: neon, 18: argon}
{nama: Muhammad Ridlo Febrio Putra, nim: 2241720098}
{1: Muhammad Ridlo Febrio Putra, 2: 2241720098}
```

## Praktikum 4
1. Ketik atau salin kode program berikut ke dalam fungsi main().
```dart
var list = [1, 2, 3];
var list2 = [0, ...list];
print(list1);
print(list2);
print(list2.length);
```
2. Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
<br>
jawaban : terjadi error pada print list1 karena tidak ada variable list1 solusi yang dilakukan adalah mmenghapus angka satu sehingga dapat terbaca sehingga menghasilkan
```
[1, 2, 3]
[0, 1, 2, 3]
4
```

3. Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```dart
list1 = [1, 2, null];
print(list1);
var list3 = [0, ...?list1];
print(list3.length);
```
jawaban : error disebabkan nilai null tidak diizinkan dalam list array solusi yang dapat diberikan adalah dengan menghapus null
```
[1, 2]
3
```
Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya!
```dart
list = [1, 2,];
print(list);
var list3 = [0, ...list];
var list4 = [2241720098, ...list3];
print(list3.length);
print(list4);
```
    [1, 2]
    3
    [2241720098, 0, 1, 2]

4. Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```dart
var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
print(nav);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.<br>
jawaban : error terdapat pada promoActive dikarenakan tidak ada variabel promo active, solusi yang dapat dilakukan adalah membuat variable tersebut dan mengisinya sehingga menghasilkan output seperti berikut
<br><br>
<b>true
```dart
bool promoActive = true;
var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
print(nav);
```
    [Home, Furniture, Plants, Outlet]
False</b>
```dart
bool promoActive = false;
var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
print(nav);
```
    [Home, Furniture, Plants]

5. Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```dart
var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
print(nav2);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain. <br>
jawaban : error pada langkah ini sama dengan langkah sebelumnya dan solusi yang diberikan sama juga dengan langkah sebelumnya

<b>true
```dart
  String login = 'Manager';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
```
    [Home, Furniture, Plants, Inventory]
False</b>
```dart
String login = 'Staff';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav2);
```
    [Home, Furniture, Plants]

6. Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```dart
var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
print(listOfStrings);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan dokumentasikan hasilnya.<br>
jawaban : 
Kode di atas mendefinisikan dua list: listOfInts yang berisi tiga bilangan bulat, dan listOfStrings yang berisi string. Dalam listOfStrings, string pertama adalah '#0', dan elemen-elemen berikutnya dihasilkan melalui loop for yang mengambil setiap elemen dari listOfInts dan menambahkannya ke string '#' untuk membuat '#1', '#2', dan '#3'. Pernyataan assert memverifikasi bahwa elemen kedua dari listOfStrings adalah '#1', dan jika benar, kode mencetak isi listOfStrings. Hasil akhirnya adalah daftar string: ['#0', '#1', '#2', '#3'].
```
[#0, #1, #2, #3]
```
## Praktikum 5
1. Ketik atau salin kode program berikut ke dalam fungsi main().
```dart
var record = ('first', a: 2, b: true, 'last');
print(record)
```
2. Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.<br>
Jawaban : error terdapat pada baris kedua dimana disebabkan karena kurang ;
```
[#0, #1, #2, #3]
```
3. Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.
```dart
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.
```dart
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  print(tukar((2, 3)));
}

```
hasil
```
(3, 2)
```
4. Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
```dart
// Record type annotation in a variable declaration:
(String, int) mahasiswa;
print(mahasiswa);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas. Dokumentasikan hasilnya dan buat laporannya! <br>
jawaban : error yang dihasilkan karena variabel mahasiswa tidak memiliki value sehingga terjadi error. hal yang dapat dilakukan adalah 
```dart
  (String, int) mahasiswa;
  mahasiswa = ('Muhammad Ridlo Febrio', 2241720098);
  print(mahasiswa);
```
hasil
```
(Muhammad Ridlo Febrio, 2241720098)
```
5. Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
```dart
var mahasiswa2 = ('first', a: 2, b: true, 'last');

print(mahasiswa2.$1); // Prints 'first'
print(mahasiswa2.a); // Prints 2
print(mahasiswa2.b); // Prints true
print(mahasiswa2.$2); // Prints 'last'
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!
<br>
jawaban : Kode tersebut mendefinisikan sebuah tuple bernama mahasiswa2 yang berisi elemen tanpa nama ('first' dan 'last') serta elemen bernama (a: 2 dan b: true). Menggunakan mahasiswa2.$1 dan mahasiswa2.$2 mengakses elemen tanpa nama, sementara mahasiswa2.a dan mahasiswa2.b mengakses elemen bernama. Kode kemudian mencetak elemen-elemen tersebut: 'first', 2, true, dan 'last'.
```
first
2
true
last
```
modifikasi
```dart
  var mahasiswa2 =
      ('Muhammad Ridlo Febrio Putra', a: 2241720098, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
  ```
  hasil
  ```
  Muhammad Ridlo Febrio Putra
2241720098
true
last
```
## Tugas

1. Jelaskan yang dimaksud Functions dalam bahasa Dart! <br>
    jawaban : Functions adalah blok kode yang dapat dijalankan berulang kali dengan menerima input (parameter) dan mengembalikan output. Functions memudahkan modularisasi dan penggunaan ulang kode.<br>

2. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!<br>
    jawaban : 
    Positional Parameter: Diakses berdasarkan urutan. Named Parameter: Dapat dipanggil berdasarkan nama, opsional jika diberi kurung kurawal.Optional Positional Parameter: Opsional, tidak wajib disertakan saat pemanggilan.
```dart
void printMessage() => print("Hello");
var myFunction = printMessage;
myFunction(); // Memanggil fungsi yang disimpan
```

3. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!<br>
jawaban : Functions di Dart dianggap sebagai first-class objects, artinya bisa disimpan dalam variabel, dikembalikan dari fungsi lain, atau diteruskan sebagai argumen.
```dart
var list = ['apple', 'banana', 'cherry'];
list.forEach((item) { print(item); });
```

4. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!<br>
jawaban : Anonymous functions adalah fungsi tanpa nama, sering digunakan dalam fungsi yang membutuhkan callback.

```dart
int a = 5;
void printA() { print(a); } // Bisa akses variabel 'a'
```

5. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!<br>
jawaban : Lexical Scope: Variabel dalam fungsi dapat diakses dari dalam fungsi yang bersarang.Lexical Closure: Fungsi bersarang dapat "menangkap" variabel dari fungsi luarnya, bahkan setelah fungsi luar selesai dieksekusi.
```dart
Function outer() {
  int x = 7;
  return () => print(x); // Fungsi ini "menangkap" variabel x
}
var inner = outer();
inner(); // Mencetak 7 meskipun outer sudah selesai
```

6. Jelaskan dengan contoh cara membuat return multiple value di Functions!<br>
jawaban : Dart tidak mendukung return multiple values secara langsung, namun bisa menggunakan tuples atau objek seperti Map atau List.
```dart
(int, String) getDetails() {
  return (1, 'Alice');
}
var (id, name) = getDetails();
```






