import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/models/service.dart';
import 'package:test_app/screens/service_show/components/body.dart';

class ServiceScreen extends StatelessWidget {
  final Service service;
  const ServiceScreen({Key? key, required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: service.color,
        appBar: AppBar(
          backgroundColor: service.color,
          foregroundColor: service.iconColor,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: service.color,
            statusBarIconBrightness: Brightness.dark,
          ),
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/Caret_left.svg',
              color: service.iconColor,
              width: 48,
            ),
            onPressed: () => Navigator.pop(context),
            splashColor: service.color,
          ),
        ),
        body: Body(
          service: service,
        ));
  }
}
