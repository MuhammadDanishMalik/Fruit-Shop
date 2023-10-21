import 'package:d_shop/widget/custom_appbar.dart';
import 'package:d_shop/widget/custom_item.dart';
import 'package:d_shop/widget/custom_item02.dart';
import 'package:d_shop/widget/custom_searchfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Custom_AppBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 120,
                child:
                    ListView(scrollDirection: Axis.horizontal, children: const [
                  Custom_Item(
                    color: Color.fromARGB(155, 230, 233, 204),
                    image: "assets/images/basket.png",
                    title: "Fruits",
                    shadowColor: Color.fromARGB(92, 255, 205, 210),
                  ),
                  Custom_Item(
                    color: Color.fromARGB(255, 211, 226, 255),
                    image: "assets/images/cheese.png",
                    title: "Milk",
                    shadowColor: Color.fromARGB(255, 227, 237, 255),
                  ),
                  Custom_Item(
                    color: Color.fromARGB(255, 218, 253, 218),
                    image: "assets/images/carrots.png",
                    title: "Vegetables",
                    shadowColor: Color.fromARGB(255, 218, 253, 218),
                  ),
                  Custom_Item(
                    color: Color.fromARGB(155, 230, 233, 204),
                    image: "assets/images/cake.png",
                    title: "Bakery",
                    shadowColor: Color.fromARGB(92, 255, 217, 221),
                  ),
                  Custom_Item(
                    color: Color.fromARGB(255, 211, 226, 255),
                    image: "assets/images/cheese.png",
                    title: "Milk",
                    shadowColor: Color.fromARGB(255, 227, 237, 255),
                  ),
                  Custom_Item(
                    color: Color.fromARGB(155, 230, 233, 204),
                    image: "assets/images/cake.png",
                    title: "Bakery",
                    shadowColor: Color.fromARGB(92, 255, 217, 221),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Custom_Item02(), Custom_Item02()],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Custom_Item02(), Custom_Item02()],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ]),
        ),
      ),

//
//
//
//
//
//
//
//
      //
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        indicatorColor: Color.fromARGB(255, 240, 238, 238),
        elevation: 0,
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Iconsax.home,
              color: Color.fromARGB(255, 0, 179, 6),
            ),
            label: "Home",
          ),
          NavigationDestination(
              icon: Icon(Iconsax.search_normal), label: "Search"),
          NavigationDestination(
              icon: Icon(Iconsax.notification), label: "Notification"),
          NavigationDestination(icon: Icon(Iconsax.user), label: "Person"),
        ],
      ),
    );
  }
}
