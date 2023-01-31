import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/auth_service.dart';
import 'package:flutter_application_2/screens/bottom_bar.dart';
import 'package:flutter_application_2/screens/home_screen.dart';
import 'package:flutter_application_2/screens/hotel_screen.dart';
import 'package:flutter_application_2/screens/register_screen.dart';
import 'package:get/get.dart';
import 'package:phone_auth_otp_ui/phone_auth_otp_ui.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user not found") {
        print("No user found that");
      }
    }

    return user;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    final Size size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'App đặt vé máy bay',
                style: TextStyle(
                  color: Color(0xCFEE5050),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Trang đăng nhập ',
                style: TextStyle(
                  color: Color.fromARGB(255, 250, 30, 129),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/logo.jpg")),
                ),
              ),
              const SizedBox(
                height: 44.0,
              ),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    hintText: "User Email",
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "User Password",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
              ),
              const Text(
                "Quên mật khẩu hả ?",
                style: TextStyle(color: Color.fromARGB(255, 247, 0, 0)),
              ),
              const SizedBox(
                height: 2.0,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: const EdgeInsets.only(left: 20, right: 20),
                width: double.infinity,
                child: RawMaterialButton(
                  fillColor: Color.fromARGB(82, 4, 255, 222),
                  elevation: 0.0,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  onPressed: () async {
                    User? user = await loginUsingEmailPassword(
                        email: _emailController.text,
                        password: _passwordController.text,
                        context: context);
                    print(user);
                    if (user != null) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const BottomBar()));
                    }
                    /* Thông báo đã xác thực */
                    else {
                      showDialog(
                          context: context,
                          builder: ((context) => const AlertDialog(
                                title: Text("Thông báo:"),
                                content: Text("Chưa đăng ký"),
                              )));
                    }
                  },
                  child: const Text(
                    'Đăng nhập ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 64, 64),
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: const EdgeInsets.only(left: 20, right: 20),
                width: double.infinity,
                child: RawMaterialButton(
                  fillColor: Color.fromARGB(82, 0, 255, 221),
                  elevation: 0.0,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  onPressed: () async {
                    User? user = await loginUsingEmailPassword(
                        email: _emailController.text,
                        password: _passwordController.text,
                        context: context);
                    print(user);

                    if (user != NullThrownError) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                    }
                  },
                  child: const Text(
                    'Đăng ký trước ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 64, 64),
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Đăng nhập bằng google",
                          style: TextStyle(fontSize: 20),
                          selectionColor: Colors.red,
                        ),
                        GestureDetector(
                          onTap: () {
                            AuthService().signInwithGoogle();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomBar()));
                          },
                          child: const Image(
                            width: 100,
                            image: AssetImage('assets/images/google_logo.jpg'),
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
