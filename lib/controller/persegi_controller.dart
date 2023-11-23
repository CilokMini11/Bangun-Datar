import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasilluas = "".obs;
  final hasilkeliling = "".obs;

  void hitungLuas(){
    int hitung = sisi*sisi;
    hasilluas.value = "Hasil Perhitungan Luas Persegi dari sisi $sisi X $sisi adalah $hitung";
  }
  void hitungKeliling(){
    int hitung1 = sisi*4;
    hasilkeliling.value = "Hasil Perhitungan Keliling Persegi dari sisi $sisi adalah $hitung1";
  }
}