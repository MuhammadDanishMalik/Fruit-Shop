import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Text_field extends StatelessWidget {
  final String Maintext;

  const Text_field({super.key, required this.Maintext});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.09,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: const BoxDecoration(),
        child: TextField(
          style: GoogleFonts.poppins(),
          textAlign: TextAlign.start,
          textInputAction: TextInputAction.none,
          obscureText: false,
          keyboardType: TextInputType.emailAddress,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                  vertical: 8, horizontal: 8), // Adjust the padding
              fillColor: Color.fromARGB(255, 233, 233, 233),
              filled: true,
              labelText: Maintext,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.green),
                borderRadius: BorderRadius.circular(10),
              ),
              suffixIcon: const Icon(
                Iconsax.search_normal,
                color: Colors.green,
                size: 20,
              )),
        ),
      ),
    );
  }
}
