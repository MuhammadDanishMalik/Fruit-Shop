import 'package:d_shop/widget/custom_searchfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Product_Appbar extends StatelessWidget {
  const Product_Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      color: const Color.fromARGB(255, 248, 248, 248),
      width: double.infinity,
      child: Column(children: [
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 35,
                width: 35,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
              Container(
                height: 35,
                width: 35,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.bagShopping),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ]),
    );
  }
}
