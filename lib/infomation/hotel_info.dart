import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/Widgets/icon_text_widget.dart';
import 'package:flutter_application_2/screens/bottom_bar.dart';
import 'package:flutter_application_2/screens/home_screen.dart';
import 'package:flutter_application_2/screens/ticket_screen.dart';
import 'package:flutter_application_2/screens/ticket_view.dart';
import 'package:flutter_application_2/utils/app_info._list.dart';
import 'package:flutter_application_2/utils/app_layout.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:table_calendar/table_calendar.dart';

class HotelInfo extends StatelessWidget {
  HotelInfo({Key? key}) : super(key: key);
  DateTime today = DateTime.now();
  DateTime? _date;

  @override
  Widget build(BuildContext context) {
    _dateString() {
      if (_date == null) {
        return 'please';
      } else {
        return '${_date?.day}-${_date?.month}-${_date?.year}';
      }
    }

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
              Center(
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    child: const Text(
                      "Trang thông tin khách sạn",
                      style: TextStyle(color: Colors.black, fontSize: 17),
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
            Gap(AppLayout.getHeight(20)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const AppIconText(
                  icon: Icons.person_add_alt_1, text: "Nhận phòng"),
              /*DATE TIMEPICKER*/
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton.icon(
                    onPressed: () async {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2010),
                        lastDate: DateTime(2030),
                      );
                    },
                    icon: const Icon(Icons.calendar_month),
                    label: const Text('Xác nhận ngày đến'),
                  )
                ],
              )
            ]),
            Gap(AppLayout.getHeight(20)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const AppIconText(
                  icon: Icons.person_remove_alt_1, text: "Trả phòng"),
              Column(
                children: [
                  ElevatedButton.icon(
                    onPressed: () async {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2010),
                        lastDate: DateTime(2030),
                      );
                    },
                    icon: const Icon(Icons.calendar_month),
                    label: const Text('Xác nhận ngày đi   '),
                  )
                ],
              ),
            ]),
            Gap(AppLayout.getHeight(20)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              AppIconText(
                  icon: Icons.remove_red_eye_outlined, text: "Khách hàng"),
              PopupMenuButton(
                  itemBuilder: (BuildContext context) => [
                        const PopupMenuItem(child: Text('1 người')),
                        const PopupMenuItem(child: Text('Cặp đôi/ 2 người ')),
                        const PopupMenuItem(child: Text('Theo gia đình')),
                        const PopupMenuItem(child: Text('Theo đoàn nhóm')),
                        const PopupMenuItem(child: Text('Đi công tác')),
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
                  "Đặt khách sạn",
                  style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                ),
              ),
            ),
          ],
        ));
  }
}
