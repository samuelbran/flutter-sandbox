import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/models/service.dart';
import 'package:test_app/screens/home/components/mont_offer.dart';
import 'package:test_app/screens/home/components/service_block.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/Search.svg",
              color: textColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/Notification.svg",
              color: textColor,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const MonthOffer(
              title: 'September\nBundle Special',
              description: 'Get \$10 off your\nfirst bundle visit',
              imagePath: 'assets/images/art_1.png',
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: defaultSpacing),
              child: const Text(
                'Services',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'WorkSans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: services.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: defaultSpacing,
                  mainAxisSpacing: defaultSpacing / 2,
                  childAspectRatio: (48 / 36),
                ),
                itemBuilder: (context, index) => ServiceItem(
                  service: services[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
