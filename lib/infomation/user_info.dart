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
import 'package:get/get_connect/http/src/utils/utils.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({Key? key}) : super(key: key);

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<UserInfoScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Đổi Email',
                )),
            const SizedBox(
              height: 10.0,
            ),
            const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Đổi password',
                )),
            Center(
              child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Thông báo'),
                        content: const Text('Thay đổi thành công'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ),
                    child: const Text('Xác nhận thay đổi'),
                  )),
            ),
          ],
        ));
  }
}
