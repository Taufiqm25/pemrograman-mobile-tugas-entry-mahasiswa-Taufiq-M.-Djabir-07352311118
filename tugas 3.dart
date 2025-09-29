import 'dart:io';

class Mahasiswa {
  String npm;
  String nama;
  String jurusan;
  int angkatan;

  Mahasiswa(this.npm, this.nama, this.jurusan, this.angkatan);

  void tampilkanDetail() {
    print("=====================================");
    print("NPM      : $npm");
    print("Nama     : $nama");
    print("Jurusan  : $jurusan");
    print("Angkatan : $angkatan");
    print("=====================================");
  }
}

void main() {
  List<Mahasiswa> daftarMahasiswa = [];

  print("=== ENTRY DATA MAHASISWA ===");

  // Entry minimal 10 data
  for (int i = 1; i <= 10; i++) {
    print("\nMasukkan data mahasiswa ke-$i");

    stdout.write("NPM      : ");
    String npm = stdin.readLineSync()!;

    stdout.write("Nama     : ");
    String nama = stdin.readLineSync()!;

    stdout.write("Jurusan  : ");
    String jurusan = stdin.readLineSync()!;

    stdout.write("Angkatan : ");
    int angkatan = int.parse(stdin.readLineSync()!);

    daftarMahasiswa.add(Mahasiswa(npm, nama, jurusan, angkatan));
  }

  // Cari data mahasiswa
  print("\n=== PENCARIAN DATA MAHASISWA ===");
  stdout.write("Masukkan NPM yang ingin dicari: ");
  String cariNpm = stdin.readLineSync()!;

  bool ditemukan = false;
  for (var mhs in daftarMahasiswa) {
    if (mhs.npm == cariNpm) {
      print("\nData Mahasiswa ditemukan!");
      mhs.tampilkanDetail();
      ditemukan = true;
      break;
    }
  }

  if (!ditemukan) {
    print("\nData dengan NPM $cariNpm tidak ditemukan.");
  }
}
