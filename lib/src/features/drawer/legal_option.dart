import 'package:flutter/material.dart';
import 'package:uber_clone/config/style/text_style.dart';

class LegalMenueOption extends StatelessWidget {
  const LegalMenueOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Legal',
              style: kSubTitleW400TextStyle,
            ),
            Text(
              'v4.386.10003',
              style: kSmallSubTitleTextStyle,
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
