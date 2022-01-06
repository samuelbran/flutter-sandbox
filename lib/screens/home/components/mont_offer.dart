import 'package:flutter/material.dart';
import 'package:test_app/constants.dart';

class MonthOffer extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const MonthOffer({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(
        defaultSpacing,
      ),
      decoration: BoxDecoration(
        color: lightBlue,
        image: DecorationImage(
          alignment: Alignment.bottomRight,
          image: AssetImage(imagePath),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(defaultRadius)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.w900,
                  fontFamily: 'WorkSans',
                ),
          ),
          const SizedBox(
            height: defaultSpacing,
          ),
          Text(
            description,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: defaultSpacing / 2,
          ),
        ],
      ),
    );
  }
}
