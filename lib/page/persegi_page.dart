import 'package:bangun_datar_kelas_c/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({Key? key}) : super(key: key);
  final PersegiController _persegiController = Get.put(PersegiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF343434),
      appBar: AppBar(
          centerTitle: true,
          title: Text("Persegi",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black),
      body: ListView(
        children: [
          Image.asset(
            "assets/p.png",
            height: 200,
            width: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Persegi",style: TextStyle(color: Colors.white,fontSize: 20,fontStyle: FontStyle.italic)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Text(style: TextStyle(color: Colors.white),
                "Persegi merupakan turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku (90°) ,"
                "Ciri-ciri dan sifat bangun datar persegi, antara lain "
                "Memiliki sisi-sisi yang sama panjang."
                "Memiliki dua diagonal yang sama panjang (keduanya saling berpotongan dan membentuk tegak lurus serta membaginya menjadi dua bagian sama panjang)."
                "Memiliki empat sudut siku-siku yang sama besar, yakni 90 derajat."),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (String value){
                      _persegiController.sisi = int.parse(value);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Sisi",
                      hintText: "Masukkan Sisi",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){
                        _persegiController.hitungLuas();
                      }, child: Text("Hitung Luas",style: TextStyle(color: Colors.black))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){
                        _persegiController.hitungKeliling();
                      }, child: Text("Hitung Keliling",style: TextStyle(color: Colors.black))),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Hasil : ",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Obx(() => Text(_persegiController.hasilluas.value,style: TextStyle(color: Colors.white))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Obx(() => Text(_persegiController.hasilkeliling.value,style: TextStyle(color: Colors.white))),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("==========================================",style: TextStyle(color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Thank You",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
