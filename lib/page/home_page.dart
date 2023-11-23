import 'package:bangun_datar_kelas_c/controller/jajar_genjang_controller.dart';
import 'package:bangun_datar_kelas_c/page/jajar_genjang_page.dart';
import 'package:bangun_datar_kelas_c/page/persegi_page.dart';
import 'package:bangun_datar_kelas_c/page/persegi_panjang_page.dart';
import 'package:bangun_datar_kelas_c/page/segitiga_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF343434),
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Home Page",
            style: TextStyle(color: Color(0xFF00FFCC)),
          ),
          backgroundColor: Colors.black),
      body: Column(children: [
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push((context),
                      MaterialPageRoute(builder: (context) => PersegiPage()));
                },
                child: CustomMenu(title: "Persegi", imageAsset: "assets/p.png"),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      (context),
                      MaterialPageRoute(
                          builder: (context) => PersegiPanjangPage()));
                },
                child: CustomMenu(
                    title: "Persegi Panjang", imageAsset: "assets/pp.png"),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push((context),
                      MaterialPageRoute(builder: (context) => SegitigaPage()));
                },
                child: CustomMenu(title: "Segitiga", imageAsset: "assets/s.png"),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      (context),
                      MaterialPageRoute(
                          builder: (context) => JajarGenjangPage()));
                },
                child: CustomMenu(
                    title: "Jajar Genjang", imageAsset: "assets/jg.png"),
              ),
            ),
          ],
        )
      ]),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      width: 200,
      height: 400,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageAsset, width: 350),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                )),
          ),
        ],
      )),
    );
  }
}
