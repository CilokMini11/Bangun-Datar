import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  int panjang = 0;
  int lebar = 0;
  final hasilluas = "".obs;
  final hasilkeliling = "".obs;

  void hitungLuas(){
    int hitung = panjang*lebar;
    hasilluas.value = "Hasil Perhitungan Luas Persegi Panjang dari $panjang X $lebar adalah $hitung";
  }
  void hitungKeliling(){
    int hitung1 = (panjang+lebar)*2;
    hasilkeliling.value = "Hasil Perhitungan Keliling Persegi Panjang dari $panjang dan $lebar adalah $hitung1";
  }
}