import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../main.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(90)),
                  gradient: LinearGradient(colors: [
                    (Color.fromARGB(255, 0, 255, 204)),
                    (Color.fromARGB(255, 255, 255, 232))
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(),
                    alignment: Alignment.bottomCenter,
                    child: const Text(
                      'Trang Đăng Ký',
                      style: TextStyle(fontSize: 25.0, color: Colors.red),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 251, 251, 251),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color.fromARGB(255, 178, 178, 178))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: false,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Colors.purple.shade200,
                    ),
                    hintText: "Nhập Email vô",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 254, 254, 254),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color.fromARGB(255, 169, 169, 169))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: false,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.purple.shade200,
                    ),
                    hintText: "Nhập Họ Tên ",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 255, 255, 255),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color.fromARGB(255, 180, 180, 180))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock_outline,
                      color: Colors.purple.shade200,
                    ),
                    hintText: "Nhập Password lần đầu",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 255, 255, 255),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color.fromARGB(255, 186, 186, 186))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.purple.shade200,
                    ),
                    hintText: "Nhập Password lần nữa",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MyApp())),
              },
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: const EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    (Color.fromARGB(82, 0, 255, 221)),
                    (Color.fromARGB(82, 0, 255, 221))
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
                  "Đăng ký",
                  style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MyApp()))
              },
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: const EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    (Color.fromARGB(82, 0, 255, 221)),
                    (Color.fromARGB(82, 0, 255, 221))
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
          ],
        ),
      ),
    );
  }
}
