import 'package:d_shop/widget/custom_searchfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Custom_AppBar extends StatelessWidget {
  const Custom_AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
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
                child: Icon(FontAwesomeIcons.bars),
              ),
              Container(
                height: 35,
                width: 35,
                child: Icon(FontAwesomeIcons.bagShopping),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text_field(Maintext: "Search"),
      ]),
    );
  }
}
