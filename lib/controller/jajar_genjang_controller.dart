import 'package:get/get.dart';

class JajarGenjangController extends GetxController{
  int tinggi = 0;
  int lebar = 0;
  final hasilluas = "".obs;
  final hasilkeliling = "".obs;

  void hitungLuas(){
    int hitung = tinggi*lebar;
    hasilluas.value = "Hasil Perhitungan Luas Jajar Genjang dari $tinggi X $lebar adalah $hitung";
  }
  void hitungKeliling(){
    int hitung1 = (tinggi+lebar)*2;
    hasilkeliling.value = "Hasil Perhitungan Keliling Jajar Genjang dari $tinggi dan $lebar adalah $hitung1";
  }
}