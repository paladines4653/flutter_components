import 'package:flutter/material.dart';

import 'package:fl_components/widgets/_widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card WIdget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg',
              name: 'Un paisaje Hermoso',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://lp-cms-production.imgix.net/features/2016/02/GettyRF_533946197.jpg',
              name: 'Una Playa Hermosa',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://weirdwonderfulai.art/wp-content/uploads/2022/08/stablediffusion-study.png',
            ),
            SizedBox(height: 100),
          ],
        ));
  }
}
