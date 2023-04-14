import 'package:coffee_shop_youtube/widget/category.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'itemswidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(items:[
        BottomNavigationBarItem(icon: const Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Tersimpan"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil")
      ]),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    height: 180, color: Color(0xFF0C9869)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              
                              Container(
                                  alignment: Alignment.topLeft,
                                  child: Icon(
                                Icons.list_outlined,
                                color: Colors.white,
                                size: 30,
                              )
                              
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(),
                              ),
                              Text(
                                "Discover",
                                style:
                                    GoogleFonts.montserrat(color: Colors.white, fontSize: 25),
                              )
                            ],
                          ),
                          Container(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.add_shopping_cart_outlined,
                                color: Colors.white,
                                size: 30,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F7),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "What are you looking for ?",
                              prefixIcon: Icon(Icons.search),
                             ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('category',style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      
                      Category(imagePath: "assets/plant_white_bg.png", title: "Plant"),
                      Category(imagePath: "assets/lamp_white_bg.png", title: "Lamp"),
                      Category(imagePath: "assets/chair_white_bg.png", title: "Chair"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Hot Item",
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
           ItemsWidget()
          ],
          
        )),
      ),
      
    );
  }
}
