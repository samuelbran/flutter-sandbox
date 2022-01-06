import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/models/service.dart';
import 'package:test_app/screens/service_show/service_show.dart';
import '../../../constants.dart';

class ServiceItem extends StatelessWidget {
  final Service service;

  const ServiceItem({
    Key? key,
    required this.service,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultSpacing),
      decoration: BoxDecoration(
        color: service.color,
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultRadius / 2),
        ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ServiceScreen(
                service: service,
              ),
            ),
          );
        },
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: defaultSpacing / 4,
                    ),
                    child: Text(
                      service.title,
                      style: const TextStyle(
                        color: textColor,
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.w900,
                        fontSize: 18.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Hero(
                  tag: 'icon_${service.title}',
                  child: SizedBox(
                    width: 32,
                    height: 32,
                    child: SvgPicture.asset(
                      service.icon,
                      color: service.iconColor,
                      width: 32.0,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
