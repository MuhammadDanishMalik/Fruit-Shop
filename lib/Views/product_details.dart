import 'package:d_shop/widget/custom_appbar.dart';
import 'package:d_shop/widget/product_appbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Product_Details extends StatefulWidget {
  const Product_Details({super.key});

  @override
  State<Product_Details> createState() => _Product_DetailsState();
}

class _Product_DetailsState extends State<Product_Details> {
  int quantityCount = 1;

  void decrementQuantity() {
    if (quantityCount > 1) {
      setState(() {
        quantityCount--;
      });
    }
  }

  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 140,
        color: Colors.white,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Total : ",
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "\$12.00",
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 35.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 0,
                                offset: Offset(0, 08),
                                color: Color.fromARGB(108, 76, 175, 79))
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          onTap: decrementQuantity,
                          customBorder: CircleBorder(),
                          child: const Center(
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                        child: Center(
                          child: Text(
                            quantityCount.toString(),
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight:
                                    FontWeight.w600), // Adjust the font size
                          ),
                        ),
                      ),
                      Container(
                        width: 35.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.white,
                            ),
                            shape: BoxShape.circle,
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 0,
                                  offset: Offset(0, 08),
                                  color: Color.fromARGB(108, 76, 175, 79))
                            ]),
                        child: InkWell(
                          onTap: incrementQuantity,
                          customBorder: CircleBorder(),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 116, 2),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white, width: 2),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 1,
                            color: const Color.fromARGB(83, 239, 108, 0),
                            offset: Offset(00, 10))
                      ]),
                  child: Icon(
                    Iconsax.shopping_bag,
                    size: 22,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 45,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 2, 206, 47),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white, width: 2),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 1,
                            color: Color.fromARGB(82, 0, 239, 92),
                            offset: Offset(00, 10))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Iconsax.gift,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        " Purchased Now",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Product_Appbar(),
            Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 248, 248, 248),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/straberries.png"))),
                  )),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
            Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Fresh Fruits",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Price",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Strawberries",
                        style: GoogleFonts.nunito(
                            fontSize: 23,
                            color: Colors.black87,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "\$12.00",
                        style: GoogleFonts.poppins(
                            fontSize: 21,
                            color: Colors.green,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.yellow.shade700,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.yellow.shade700,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.yellow.shade700,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.yellow.shade700,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        FontAwesomeIcons.star,
                        color: Colors.yellow.shade700,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "4.6",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Introduction",
                        style: GoogleFonts.nunito(
                            fontSize: 22,
                            color: Colors.black87,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 200,
                    // Set a fixed height for the container
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Text(
                        "The Strawberries  (Fragaria ananssa) is widely grown hybrid specie  an excellent source of vitamin C, vitamin K, and folic acid and potassium. It is rich in iron and magnesium levels. To a lesser extent it also provides potassium, calcium, phosphorus, manganese, copper and silicon. It works as a powerful antioxidant and has natural anti-inflammatory properties.",
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 50,
            ),
          ]),
        ),
      ),
    );
  }
}
