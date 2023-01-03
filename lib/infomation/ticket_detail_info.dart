import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/Widgets/icon_text_widget.dart';
import 'package:flutter_application_2/screens/bottom_bar.dart';
import 'package:flutter_application_2/utils/app_info._list.dart';
import 'package:flutter_application_2/utils/app_layout.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:gap/gap.dart';

class TicketDetailInfo extends StatelessWidget {
  TicketDetailInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(children: [
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
          Gap(AppLayout.getHeight(25)),
          Center(
            child: Container(
                decoration: BoxDecoration(color: Colors.grey.shade300),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: const Text(
                  "Trang chỉnh sửa thông tin",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                )),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            AppIconText(icon: Icons.flight_takeoff_rounded, text: "Khởi hành"),
            PopupMenuButton(
                itemBuilder: (BuildContext context) => [
                      const PopupMenuItem(child: Text('Phan Thiết ')),
                      const PopupMenuItem(child: Text('Vũng Tàu')),
                      const PopupMenuItem(child: Text('Cần Thơ')),
                      const PopupMenuItem(child: Text('Hưng Yên')),
                    ]),
          ]),
          Gap(AppLayout.getHeight(20)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            AppIconText(icon: Icons.flight_takeoff_rounded, text: "Điểm đến"),
            PopupMenuButton(
                itemBuilder: (BuildContext context) => [
                      const PopupMenuItem(child: Text('Phan Thiết ')),
                      const PopupMenuItem(child: Text('Vũng Tàu')),
                      const PopupMenuItem(child: Text('Cần Thơ')),
                      const PopupMenuItem(child: Text('Hưng Yên')),
                    ]),
          ]),
          Gap(AppLayout.getHeight(20)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            AppIconText(icon: Icons.person_add, text: "Hành khách"),
            PopupMenuButton(
                itemBuilder: (BuildContext context) => [
                      const PopupMenuItem(child: Text('1 người ')),
                      const PopupMenuItem(child: Text('2 người')),
                      const PopupMenuItem(child: Text('3 người')),
                      const PopupMenuItem(child: Text('4 người')),
                    ]),
          ]),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.airplane_ticket_outlined),
                border: OutlineInputBorder(),
                hintText: 'Mã khuyến mãi ',
              ),
            ),
          ),
          Gap(AppLayout.getHeight(1)),
          GestureDetector(
            onTap: () => {},
            child: Container(
              alignment: Alignment.center,
              height: 54,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  (Color.fromARGB(255, 250, 251, 223)),
                  (Color.fromARGB(255, 251, 242, 242))
                ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 20,
                      color: Color.fromARGB(255, 251, 250, 250))
                ],
              ),
              child: const Text(
                "Tìm chuyến bay",
                style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => BottomBar()))
            },
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: const EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              height: 54,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  (Color.fromARGB(255, 250, 251, 223)),
                  (Color.fromARGB(255, 251, 242, 242))
                ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 20,
                      color: Color.fromARGB(255, 251, 250, 250))
                ],
              ),
              child: const Text(
                "Trở về đăng nhập ",
                style: TextStyle(color: Color.fromARGB(255, 255, 2, 2)),
              ),
            ),
          ),
        ]));
  }
}
