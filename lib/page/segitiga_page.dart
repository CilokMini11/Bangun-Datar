import 'package:bangun_datar_kelas_c/controller/persegi_controller.dart';
import 'package:bangun_datar_kelas_c/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({Key? key}) : super(key: key);
  final SegitigaController _SegitigaController = Get.put(SegitigaController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF343434),
      appBar: AppBar(
          centerTitle: true,
          title: Text("Segitiga",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black),
      body: ListView(
        children: [
          Image.asset(
            "assets/s.png",
            height: 200,
            width: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Segitiga",style: TextStyle(color: Colors.white,fontSize: 20,fontStyle: FontStyle.italic)),
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
                "Segitiga merupakan bangun datar yang dibatasi dengan adanya tiga buah sisi serta memiliki tiga buah titik sudut,Ciri-ciri dan sifat bangun datar segitiga, antara lain sebagai berikut. Memiliki tiga sudut yang sama besarnya, yakni 60 derajat. Memiliki tiga sumbu simetri lipat. Memiliki tiga sumbu simetri putar."),
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          onChanged: (String value){
                            _SegitigaController.alas = int.parse(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Alas/Sisi 1",
                            hintText: "Masukkan Alas/Sisi 1",
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          onChanged: (String value){
                            _SegitigaController.tinggi = int.parse(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Tinggi/Sisi 2",
                            hintText: "Masukkan Tinggi/Sisi 2",
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          onChanged: (String value){
                            _SegitigaController.sisi = int.parse(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Sisi3",
                            hintText: "Masukkan Sisi3",
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
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){
                        _SegitigaController.hitungLuas();
                      }, child: Text("Hitung Luas",style: TextStyle(color: Colors.black))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){
                        _SegitigaController.hitungKeliling();
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
                  child: Obx(() => Text(_SegitigaController.hasilluas.value,style: TextStyle(color: Colors.white))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Obx(() => Text(_SegitigaController.hasilkeliling.value,style: TextStyle(color: Colors.white))),
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
