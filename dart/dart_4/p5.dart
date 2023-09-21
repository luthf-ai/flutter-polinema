void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
  (String, int) mahasiswa;
  mahasiswa = ('Aido Luthfi Al Hakim', 2141720136);
  print(mahasiswa);
  var mahasiswa2 = ('first', a: 2141720136 , b: true, 'Aido Luthfi Al Hakim');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}


