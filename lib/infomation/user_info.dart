import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/bottom_bar.dart';
import 'package:flutter_application_2/screens/home_screen.dart';
import 'package:flutter_application_2/screens/hotel_screen.dart';
import 'package:flutter_application_2/screens/register_screen.dart';
import 'package:flutter_application_2/utils/app_layout.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({Key? key}) : super(key: key);

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<UserInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                child: BackButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const BottomBar())),
                ),
              ),
              Gap(AppLayout.getHeight(5)),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("Gun");
                    },
                    child: Text("Exchange",
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w300)),
                  )
                ],
              ),
            ]),
            Center(
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: const Text(
                    "Trang chỉnh sửa thông tin",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  )),
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: "Đổi tên đăng nhập",
                  prefixIcon: Icon(
                    Icons.sticky_note_2,
                    color: Color.fromARGB(255, 0, 0, 0),
                  )),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: "Đổi mật khẩu",
                  prefixIcon: Icon(
                    Icons.phone_android,
                    color: Color.fromARGB(255, 0, 0, 0),
                  )),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: const Text(
                  'Xác nhận thay đổi ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 64, 64),
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
