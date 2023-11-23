import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas = 0;
  int tinggi = 0;
  int sisi = 0;
  final hasilluas = "".obs;
  final hasilkeliling = "".obs;

  void hitungLuas(){
    int hitung = alas*tinggi*2;
    hasilluas.value = "Hasil Perhitungan Luas Persegi Panjang dari $tinggi X $alas adalah $hitung";
  }
  void hitungKeliling(){
    int hitung1 = alas+tinggi+sisi;
    hasilkeliling.value = "Hasil Perhitungan Keliling Segitiga dari $tinggi ,$sisi dan $alas adalah $hitung1";
  }
}