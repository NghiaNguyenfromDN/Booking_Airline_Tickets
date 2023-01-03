import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/Widgets/column_layout.dart';
import 'package:flutter_application_2/Widgets/layout_builder_widget.dart';
import 'package:flutter_application_2/Widgets/ticket_tabs.dart';
import 'package:flutter_application_2/screens/ticket_view.dart';
import 'package:flutter_application_2/utils/app_info._list.dart';
import 'package:flutter_application_2/utils/app_layout.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tickets",
                  style: Styles.headLineStyle1,
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
                firstTab: "Sắp khởi hành", secondTab: "Đã khởi hành"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              child: Column(
                children: [
                  /* ID locate */
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: 'Profile',
                        seconText: 'Locate',
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firstText: 'NGUYEN VAN NGHIA',
                        seconText: 'Bien Hoa',
                        alignment: CrossAxisAlignment.end,
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  /* empty space */
                  const AppLayoutBuilderWidget(
                    sections: 15,
                    isColor: false,
                    width: 5,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  /* Booking code */
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: 'Idenity document',
                        seconText: 'Date',
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firstText: '67010001116038',
                        seconText: '08/08/2000',
                        alignment: CrossAxisAlignment.end,
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilderWidget(
                    sections: 15,
                    isColor: false,
                    width: 5,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/logo.PNG",
                                scale: 5,
                              ),
                              Text(
                                "(☞ﾟヮﾟ)☞ 6851",
                                style: Styles.headLineStyle3,
                              )
                            ],
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            "Profile",
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      const AppColumnLayout(
                        firstText: 'ID Banking',
                        seconText: 'Nguyen Van Nghia',
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Gap(AppLayout.getHeight(20)),
                ],
              ),
            ),
            /* bar code QR  */
            const SizedBox(
              height: 1,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(AppLayout.getHeight(21)),
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)))),
              margin: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                  right: AppLayout.getHeight(20)),
              padding: EdgeInsets.only(
                  top: AppLayout.getHeight(15),
                  bottom: AppLayout.getHeight(20)),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com/propertynysennai',
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[0],
              ),
            ),
          ],
        ),
        /* Cục tròn TICKETS */
        Positioned(
          left: AppLayout.getHeight(20),
          top: AppLayout.getHeight(275),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
        Positioned(
          right: AppLayout.getHeight(20),
          top: AppLayout.getHeight(275),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
      ]),
    );
  }
}
