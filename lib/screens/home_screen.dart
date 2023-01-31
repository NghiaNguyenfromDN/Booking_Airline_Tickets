import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/double_text_widget.dart';
import 'package:flutter_application_2/screens/hotel_screen.dart';
import 'package:flutter_application_2/screens/ticket_view.dart';
import 'package:flutter_application_2/utils/app_info._list.dart';
import 'package:flutter_application_2/utils/app_styles.dart';

import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                    )
                  ],
                ),
                const Gap(25),
                /* Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(15, 110, 131, 205)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon((FluentSystemIcons.ic_fluent_search_filled),
                          color: Color(0xFFBFC205)),
                      Text(
                        "Tìm kiếm",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),  */
                const TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(FluentSystemIcons.ic_fluent_search_filled),
                      iconColor: Colors.yellowAccent,
                      border: OutlineInputBorder(),
                      labelText: 'Tìm kiếm thông tin',
                    )),
                const Gap(40),
                const AppDoubleTextWidget(
                  bigText: "Các chuyến bay",
                  smallText: "Toàn cảnh",
                )
              ],
            ),
          ),
          const Gap(15),
          /* scroll View used for replace */
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList
                  .map((singkeTicket) => TicketView(
                        ticket: singkeTicket,
                      ))
                  .toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleTextWidget(
              bigText: "Khách sạn",
              smallText: "Toàn cảnh",
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: hotelList
                    .map((singleHotel) => HotelScreen(hotel: singleHotel))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
