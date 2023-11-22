import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child:
                    CustomMenu(title: "Persegi", imageAsset: "assets/p.png")),
            Expanded(
                child: CustomMenu(
                    title: "Persegi Panjang", imageAsset: "assets/pp.png")),
          ],
        ),
        Row(
          children: [
            Expanded(
                child:
                    CustomMenu(title: "Segitiga", imageAsset: "assets/s.png")),
            Expanded(
                child: CustomMenu(
                    title: "Jajar Genjang", imageAsset: "assets/jg.png")),
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
          Image.asset(
            imageAsset,
            width: 350),
          Padding(padding: const EdgeInsets.all(8.0),
          child: Text(
              title,
              style: TextStyle(color: Color(0xFFFFFFFF),)
          ),
          ),
        ],
      )),
    );
  }
}
