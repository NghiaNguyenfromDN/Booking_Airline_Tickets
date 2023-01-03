import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String seconText;
  final bool? isColor;
  const AppColumnLayout(
      {Key? key,
      required this.firstText,
      required this.seconText,
      required this.alignment,
      this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      //style: isColor == null? Styles.headLineStyle3 .copyWith(color: Colors.white) : Styles.headLineStyle3
      children: [
        Text(
          firstText,
          style: isColor == null
              ? Styles.headLineStyle3
                  .copyWith(color: Color.fromARGB(255, 56, 53, 52))
              : Styles.headLineStyle3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          seconText,
          style: isColor == null
              ? Styles.headLineStyle4
                  .copyWith(color: Color.fromARGB(255, 169, 157, 157))
              : Styles.headLineStyle4,
        ),
      ],
    );
  }
}
