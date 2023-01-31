import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/Widgets/icon_text_widget.dart';
import 'package:flutter_application_2/infomation/airplane_go.dart';
import 'package:flutter_application_2/infomation/provider_main.dart';
import 'package:flutter_application_2/screens/bottom_bar.dart';
import 'package:flutter_application_2/utils/app_info._list.dart';
import 'package:flutter_application_2/utils/app_layout.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:gap/gap.dart';

/*
 enum _MenuValues { PhanThiet, VungTau, CanTho, HungYen, QuiNhon, DaNang }

class TicketDetailInfo extends StatelessWidget {
  TicketDetailInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App đặt vé máy bay'),
          backgroundColor: Colors.blue,
        ),
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
          Gap(AppLayout.getHeight(10)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Center(
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    color: Color(0xD91130CE),
                    borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                  ),
                  child: Center(
                    child: Text(
                      "Trang thông tin chuyến bay",
                      style: Styles.textStyle.copyWith(color: Colors.white),
                    ),
                  )),
            ),
            Gap(AppLayout.getHeight(5)),
            Container(
              child: BackButton(
                onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const BottomBar())),
              ),
            ),
          ]),

          /* KHỞI HÀNH */
          Gap(AppLayout.getHeight(15)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const AppIconText(
                icon: Icons.flight_takeoff_rounded, text: "Khởi hành"),
            PopupMenuButton<_MenuValues>(
              itemBuilder: (BuildContext context) => [
                const PopupMenuItem(
                  child: Text('Phan Thiết '),
                  value: _MenuValues.PhanThiet,
                ),
                const PopupMenuItem(
                  child: Text('Vũng Tàu'),
                  value: _MenuValues.VungTau,
                ),
                const PopupMenuItem(
                  child: Text('Cần Thơ'),
                  value: _MenuValues.CanTho,
                ),
                const PopupMenuItem(
                  child: Text('Hưng Yên'),
                  value: _MenuValues.HungYen,
                ),
                const PopupMenuItem(
                  child: Text('Đà Nẵng'),
                  value: _MenuValues.DaNang,
                ),
                const PopupMenuItem(
                  child: Text('Qui Nhơn'),
                  value: _MenuValues.QuiNhon,
                ),
              ],
              onSelected: (value) {
                switch (value) {
                  case _MenuValues.PhanThiet:
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => AirplaneGo()));
                    break;
                  case _MenuValues.VungTau:
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => AirplaneGo()));
                    break;
                  case _MenuValues.CanTho:
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => AirplaneGo()));
                    break;
                  case _MenuValues.HungYen:
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => AirplaneGo()));
                    break;
                  case _MenuValues.DaNang:
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => AirplaneGo()));
                    break;
                  case _MenuValues.QuiNhon:
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => AirplaneGo()));
                    break;
                }
              },
            ),
          ]),
          /* const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.airplane_ticket_outlined),
                border: OutlineInputBorder(),
                hintText: 'Khởi hành ',
              ),
            ),
          ), */
          Gap(AppLayout.getHeight(20)),

          /* ĐIỂM ĐẾN */
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const AppIconText(
                icon: Icons.flight_takeoff_rounded, text: "Điểm đến"),
            PopupMenuButton(
                itemBuilder: (BuildContext context) => [
                      const PopupMenuItem(child: Text('Phan Thiết ')),
                      const PopupMenuItem(child: Text('Vũng Tàu')),
                      const PopupMenuItem(child: Text('Cần Thơ')),
                      const PopupMenuItem(child: Text('Hưng Yên')),
                    ]),
          ]),
          /*  const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.flight_takeoff_rounded),
                border: OutlineInputBorder(),
                hintText: 'Điểm đến ',
              ),
            ),
          ), */
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
            onTap: () => {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MoviesScreen()))
            },
            child: Container(
              alignment: Alignment.center,
              height: 54,
              decoration: BoxDecoration(
                color: Color(0xD91130CE),
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
              ),
              child: const Text(
                "Tìm chuyến bay",
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          ),
        ]));
  }
} */
class TicketDetailInfo extends StatefulWidget {
  const TicketDetailInfo({super.key});

  @override
  _TicketDetailInfoState createState() => _TicketDetailInfoState();
}

class _TicketDetailInfoState extends State<TicketDetailInfo> {
  final _from = TextEditingController();
  final _to = TextEditingController();
  final _name = TextEditingController();
  final _age = TextEditingController();
  final _tick = TextEditingController();
  final _adults = TextEditingController();
  final _child = TextEditingController();
  final _infants = TextEditingController();

  void book() {
    final cname = _name.text;
    if (cname != '') {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Mời $cname"),
            );
          });
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text("Enter the detail"),
            );
          });
    }
  }

  void reset() {
    setState(() {
      _from.text = '';
      _to.text = '';
      _name.text = '';
      _age.text = '';
      _tick.text = '';
      _adults.text = '';
      _child.text = '';
      _infants.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App đặt vé máy bay'),
        backgroundColor: Color(0xD91130CE),
      ),
      body: SingleChildScrollView(
          child: Form(
        child: Column(children: [
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
          Gap(AppLayout.getHeight(2)),
          Center(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xD91130CE),
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                ),
                child: Center(
                  child: Text(
                    "Danh sách chuyến bay",
                    style: Styles.textStyle.copyWith(color: Colors.white),
                  ),
                )),
          ),
          Gap(AppLayout.getHeight(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  focusNode: FirstDisabledFocusNode(),
                  decoration: const InputDecoration(
                      hintText: "Khởi hành",
                      hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                      prefixIcon: Icon(Icons.add_location),
                      border: InputBorder.none),
                ),
              ),
              Container(
                  child: Image.asset(
                'assets/images/logo_swap.jpg',
                height: 50,
                width: 70,
              )),
              Container(
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  focusNode: FirstDisabledFocusNode(),
                  decoration: const InputDecoration(
                      hintText: "Điểm đến",
                      hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                      prefixIcon: Icon(Icons.add_location),
                      border: InputBorder.none),
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(2)),
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 2, color: Colors.black)),
            child: TextField(
              focusNode: FirstDisabledFocusNode(),
              decoration: const InputDecoration(
                  hintText: "Tên",
                  prefixIcon: Icon(Icons.person),
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  border: InputBorder.none),
            ),
          ),
          Gap(AppLayout.getHeight(2)),
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 2, color: Colors.black)),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Tuổi",
                  prefixIcon: Icon(Icons.confirmation_number),
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  border: InputBorder.none),
            ),
          ),
          Gap(AppLayout.getHeight(2)),
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 2, color: Colors.black)),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Voucher",
                  prefixIcon: Icon(Icons.add_card),
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  border: InputBorder.none),
            ),
          ),
          Gap(AppLayout.getHeight(2)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 90,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  focusNode: FirstDisabledFocusNode(),
                  decoration: const InputDecoration(
                      hintText: "Người lớn",
                      hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                      contentPadding: EdgeInsets.only(left: 10),
                      border: InputBorder.none),
                ),
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  focusNode: FirstDisabledFocusNode(),
                  decoration: const InputDecoration(
                      hintText: " Trẻ em",
                      hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                      contentPadding: EdgeInsets.only(left: 10),
                      border: InputBorder.none),
                ),
              ),
              Container(
                width: 90,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  focusNode: FirstDisabledFocusNode(),
                  decoration: const InputDecoration(
                      hintText: "Infants",
                      hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                      contentPadding: EdgeInsets.only(left: 10),
                      border: InputBorder.none),
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(2)),
          InkWell(
            onTap: () => book(),
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 2),
              ),
              child: const Text(
                "Đặt vé",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          ElevatedButton(
              onPressed: () => {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => BottomBar())),
                  },
              child: const Text(
                'Home',
                style: TextStyle(fontSize: 20),
              )),
        ]),
      )),
    );
  }
}

class FirstDisabledFocusNode extends FocusNode {
  @override
  bool consumeKeyboardToken() {
    return false;
  }
}
