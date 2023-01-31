// ignore_for_file: file_names
// Trang done //
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/screens/bottom_bar.dart';
import 'package:flutter_application_2/utils/app_layout.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

final nameController = TextEditingController();
final subjectController = TextEditingController();
final emailController = TextEditingController();
final messageController = TextEditingController();

Future sendEmail({
  required String name,
  required String subject,
  required String email,
  required String message,
}) async {
  final serviceId = 'service_nn08083006';
  final templateId = 'template_r9oz6ow';
  final userId = 'F8s71TiY0vwLlo4q_';
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  final response = await http.post(url,
      headers: {
        'origin': 'http://localhost',
        'Content-Type': 'application/json'
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'name': nameController.text,
          'subject': subjectController.text,
          'email': emailController.text,
          'message': messageController.text
        }
      }));
  print(response.body);
  /* return response.statusCode; */
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App đặt vé máy bay'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(25.0, 20, 18, 0),
        child: Form(
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
                  )
                ],
              ),
              Gap(AppLayout.getHeight(10)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                          "Liên hệ với chúng tôi",
                          style: Styles.textStyle.copyWith(color: Colors.white),
                        ),
                      )),
                ),
                Gap(AppLayout.getHeight(5)),
                Container(
                  child: BackButton(
                    onPressed: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) => const BottomBar())),
                  ),
                ),
              ]),
              const Gap(20),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.account_circle),
                  hintText: 'Tên khách hàng',
                  labelText: 'Ghi rõ họ và tên',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: subjectController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.subject_rounded),
                  hintText: 'Tiêu đề',
                  labelText: 'Tiêu đề thông tin',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Gmail',
                  labelText: 'Gmail',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: messageController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.message),
                  hintText: '',
                  labelText: 'Lời nhắn',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    sendEmail(
                        name: nameController.text,
                        subject: subjectController.text,
                        email: emailController.text,
                        message: messageController.text);
                  },
                  child: const Text(
                    'Gửi',
                    style: TextStyle(fontSize: 20),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
