import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/Widgets/double_text_widget.dart';
import 'package:flutter_application_2/Widgets/icon_text_widget.dart';
import 'package:flutter_application_2/Widgets/ticket_tabs.dart';
import 'package:flutter_application_2/infomation/airplane_tail_info.dart';
import 'package:flutter_application_2/infomation/ticket_detail_info.dart';
import 'package:flutter_application_2/utils/app_layout.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(10)),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "News\noutside ",
                style: Styles.headLineStyle1
                    .copyWith(fontSize: AppLayout.getWidth(35)),
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
          Gap(AppLayout.getHeight(20)),
          const AppTicketTabs(
            firstTab: "Vé máy bay",
            secondTab: "Hotels",
          ),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Khởi hành"),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Điểm đến"),
          Gap(AppLayout.getHeight(25)),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => TicketDetailInfo()));
            },
            child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getWidth(18),
                    horizontal: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Color(0xD91130CE),
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                ),
                child: Center(
                  child: Text(
                    "Tìm chuyến bay",
                    style: Styles.textStyle.copyWith(color: Colors.white),
                  ),
                )),
          ),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(
            bigText: "Các chuyến bay",
            smallText: " Toàn cảnh",
          ),
          Gap(AppLayout.getHeight(15)),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const AirPlaneTailInfo()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: AppLayout.getHeight(400),
                  width: size.width * 0.42,
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(15),
                      vertical: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 1,
                            spreadRadius: 1)
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(12)),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/tale_of_airplane.jpg"))),
                      ),
                      Gap(AppLayout.getHeight(25)),
                      Text(
                        "Ảnh chụp cánh máy bay tới từ phóng viên\nNghĩa Nguyễn\nvjpprono1 !!",
                        style: Styles.headLineStyle2,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: AppLayout.getHeight(180),
                          decoration: BoxDecoration(
                              color: const Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(18))),
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(15),
                              horizontal: AppLayout.getHeight(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Red warning!!",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(10)),
                              Text(
                                "Chuyến bay từ Tân sơn nhất đến Hà Nội đã bị hủy",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: const Color(0xFF189999)),
                                color: Colors.greenAccent),
                          ),
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Container(
                      width: size.width * 0.45,
                      height: AppLayout.getHeight(210),
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15),
                          horizontal: AppLayout.getHeight(15)),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18)),
                        color: const Color.fromARGB(255, 237, 243, 167),
                      ),
                      child: Column(
                        children: [
                          Text("Voucher giảm giá 20%",
                              style: Styles.headLineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                          Gap(AppLayout.getHeight(5)),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: ' ❤', style: TextStyle(fontSize: 30)),
                            TextSpan(
                                text: '💛', style: TextStyle(fontSize: 50)),
                            TextSpan(
                                text: '💙', style: TextStyle(fontSize: 30)),
                          ]))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
