import 'package:d_shop/Views/product_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custom_Item02 extends StatelessWidget {
  const Custom_Item02({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return Product_Details();
        }));
      },
      child: Ink(
        height: 250,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    )),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 160,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/straberries.png"))),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Strawberries",
            style: GoogleFonts.poppins(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "1 Kg Price",
            style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black45),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "\$12.00",
            style: GoogleFonts.poppins(
                fontSize: 18, fontWeight: FontWeight.w800, color: Colors.green),
          ),
        ]),
      ),
    );
  }
}
