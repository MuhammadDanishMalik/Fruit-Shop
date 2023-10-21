import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custom_Item extends StatelessWidget {
  final String image;
  final String title;
  final Color color;
  final Color shadowColor;

  const Custom_Item(
      {super.key,
      required this.image,
      required this.title,
      required this.color,
      required this.shadowColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(18),
                child: Ink(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: color,
                      border: Border.all(width: 2, color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                            color: shadowColor,
                            blurRadius: 30,
                            spreadRadius: 1,
                            offset: Offset(10, 20))
                      ]),
                  child: Center(
                      child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(image),
                            filterQuality: FilterQuality.high)),
                  )),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
