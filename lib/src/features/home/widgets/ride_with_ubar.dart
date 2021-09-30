import 'package:flutter/material.dart';
import 'package:uber_clone/config/style/text_style.dart';
import 'package:uber_clone/src/widgets/image/path_const.dart';

class RideWithUber extends StatelessWidget {
  const RideWithUber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      height: MediaQuery.of(context).size.height / 5.5,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff10462d),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Get out and about',
                  style: kTitleWhiteTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: const [
                      Text(
                        'Ride with uber',
                        style: kSubTitleBoldTextStyle,
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.white,
                        size: 18,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Positioned(
              bottom: 0.0,
              right: 0.0,
              child: Image(
                image: AssetImage(kOrageDishPath),
              )),
        ],
      ),
    );
  }
}
