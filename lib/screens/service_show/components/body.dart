import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/models/service.dart';

class Body extends StatelessWidget {
  final Service service;

  const Body({Key? key, required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: const EdgeInsets.symmetric(
                    vertical: defaultSpacing * 2,
                    horizontal: defaultSpacing,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(defaultRadius),
                      topRight: Radius.circular(defaultRadius),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: defaultSpacing,
                            ),
                            child: Hero(
                              tag: 'icon_${service.title}',
                              child: SizedBox(
                                width: 52,
                                height: 52,
                                child: SvgPicture.asset(
                                  service.icon,
                                  color: service.iconColor,
                                  width: 52.0,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              service.title,
                              style: const TextStyle(
                                color: textColor,
                                fontFamily: 'WorkSans',
                                fontSize: 28.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
