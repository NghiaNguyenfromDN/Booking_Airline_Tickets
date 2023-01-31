import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/screens/bottom_bar.dart';
import 'package:flutter_application_2/utils/app_layout.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:gap/gap.dart';

class AirplaneGo extends StatelessWidget {
  const AirplaneGo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App đặt vé máy bay'),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                /* Trang đầu */
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chào buổi sáng",
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "App đặt vé\nmáy bay",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/logo.jpg")),
                      ),
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            decoration: BoxDecoration(
                              color: Color(0xD91130CE),
                              borderRadius:
                                  BorderRadius.circular(AppLayout.getWidth(10)),
                            ),
                            child: Center(
                              child: Text(
                                "Danh sách chuyến bay",
                                style: Styles.textStyle
                                    .copyWith(color: Colors.white),
                              ),
                            )),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Container(
                        child: BackButton(
                          onPressed: () => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (context) => const BottomBar())),
                        ),
                      ),
                    ]),
                Container(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
