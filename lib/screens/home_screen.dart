import 'package:flutter/material.dart';
import 'package:shop_ui/widgets/post.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> list = [
    "assets/images/lifestyle.jpg",
    "assets/images/image_1.jpeg",
    "assets/images/image_2.jpg",
    "assets/images/image_3.png",
    "assets/images/image_4.jpg",
    "assets/images/image_5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.menu, color: Colors.white),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromRGBO(254, 167, 36, 1.0),
            ),
            width: 30,
            height: 30,
            alignment: Alignment.center,
            child: const Text(
              "7",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
        title: const Text(
          "Apple Products",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(254, 87, 32, 1.0),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/lifestyle.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  const Text(
                    "Lifestyle sale",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        return;
                      },
                      style: ButtonStyle(
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Shop Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            for (String item in list) Post(imgSource: item),
          ],
        ),
      ),
    );
  }
}
