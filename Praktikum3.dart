void main() {
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
}
