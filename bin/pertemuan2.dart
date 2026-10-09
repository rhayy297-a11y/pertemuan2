double hitungPajak(double total) => total * 10 / 100;

int hitungTotal(List<int> harga) {
  int jumlah = 0;
  for (int h in harga) {
    jumlah += h;
  }
  return jumlah;
}

void main() {
  const namaToko = 'Toko Metro';
  final namaPelanggan = 'Budi';
  bool isMember = true;
  String? kodeVoucher;

  List<String> namaBarang = ['Pensil', 'Buku', 'Tas'];
  List<int> hargaBarang = [5000, 15000, 120000];

  int total = hitungTotal(hargaBarang);

  double diskon = 0;
  if (isMember && total >= 100000) {
    diskon = total * 10 / 100;
  }

  double pajak = hitungPajak(total - diskon);
  double bayar = total - diskon + pajak;
  int uangBayar = 200000;
  double kembalian = uangBayar - bayar;

  String level;
  switch (total) {
    case >= 200000:
      level = 'Gold';
    case >= 100000:
      level = 'Silver';
    default:
      level = 'Reguler';
  }

  print('=== $namaToko ===');
  print('Pelanggan : $namaPelanggan');
  for (int i = 0; i < namaBarang.length; i++) {
    print('${i + 1}. ${namaBarang[i]}  Rp ${hargaBarang[i]}');
  }
  print('Total     : Rp $total');
  print('Diskon    : Rp $diskon');
  print('Pajak     : Rp $pajak');
  print('Bayar     : Rp $bayar');
  print('Voucher   : ${kodeVoucher ?? 'Tidak ada voucher'}');
  print('Level     : $level');
  print('Kembalian : Rp $kembalian');
}