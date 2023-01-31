import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/screens/bottom_bar.dart';
import 'package:flutter_application_2/utils/app_layout.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/platform/platform.dart';

class AirPlaneTailInfo extends StatelessWidget {
  const AirPlaneTailInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
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
                /* Trang đầu */
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
                /* Trang giữa */
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Container(
                            decoration: BoxDecoration(color: Color(0xD91130CE)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            child: const Text(
                              "Tin tức 24h",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            )),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Container(
                        child: BackButton(
                          onPressed: () => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (context) => const BottomBar())),
                        ),
                      ),
                    ]),
                Gap(AppLayout.getHeight(5)),
                /* SCROLL XOAY */
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.85,
                        height: AppLayout.getHeight(
                            GetPlatform.isAndroid == true ? 700 : 100),
                        child: Container(
                          height: AppLayout.getHeight(650),
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getHeight(15),
                              vertical: AppLayout.getWidth(15)),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(20)),
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
                                    borderRadius: BorderRadius.circular(
                                        AppLayout.getHeight(12)),
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/news1.jpg"))),
                              ),
                              Gap(AppLayout.getHeight(25)),
                              Text(
                                "Hai máy bay va chạm tại Nội Bài do lỗi lái xe kéo đẩy",
                                style: Styles.headLineStyle1,
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "   Hai chiếc Airbus A321 va nhau tại sân bay Nội Bài hơn 5 tháng trước do lỗi của lái xe và thợ kỹ thuật khi đẩy máy bay ra khỏi vị trí đỗ.",
                                style: Styles.headLineStyle4,
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "   Ngày 22/4, Cục Hàng không Việt Nam thông báo kết quả điều tra sự cố máy bay số hiệu VN-A222 va chạm với máy bay VN-A590 (cùng của Bamboo Airways) tại sân bay Nội Bài hôm 2/11/2021.",
                                style: Styles.headLineStyle4,
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "   Theo đó, lái xe kéo, đẩy máy bay thuộc Công ty cổ phần Phục vụ mặt đất Hà Nội - HGS khi đẩy lùi máy bay VN-A222 từ vị trí đỗ ra vệt lăn đã không quan sát, nên không nhận diện được nguy cơ va chạm với máy bay VN-A590.",
                                style: Styles.headLineStyle4,
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "   Thợ kỹ thuật (chỉ huy kéo, đẩy máy bay thuộc Bamboo Airways) cũng không đánh giá được nguy cơ va chạm khi đẩy máy bay. Trong quá trình đẩy máy bay, người này chỉ tập trung giám sát khu vực động cơ khi tổ bay khởi động mà không quan sát khu vực máy bay đang di chuyển đến, do đó không phát hiện được nguy cơ va chạm với máy bay đỗ tại vị trí 73A.",
                                style: Styles.headLineStyle4,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      SizedBox(
                        width: size.width * 1.0,
                        height: AppLayout.getHeight(
                            GetPlatform.isAndroid == true ? 700 : 100),
                        child: Container(
                          height: AppLayout.getHeight(200),
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getHeight(15),
                              vertical: AppLayout.getWidth(15)),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(20)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 1,
                                    spreadRadius: 1)
                              ]),
                          child: Column(
                            children: [
                              Container(
                                height: AppLayout.getHeight(87),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        AppLayout.getHeight(12)),
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/news3.jpg"))),
                              ),
                              Gap(AppLayout.getHeight(25)),
                              Text(
                                "Hàng không bổ sung thêm 1.500 chuyến bay phục vụ Tết",
                                style: Styles.headLineStyle1,
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "   Giai đoạn tăng thêm chuyến được xác định từ ngày từ 6-1-2023 đến 5-2-2023 (tức 15 tháng chạp năm Nhâm Dần đến 15 tháng giêng năm Quý Mão). Các chuyến bay tăng cường tập trung trên các đường bay nội địa chở khách về quê thăm thân hoặc du lịch dịp Tết như giữa Hà Nội, Đà Nẵng, TP.HCM, Hải Phòng, Vinh, Thanh Hóa, Huế, Quảng Nam, Buôn Ma Thuột, Nha Trang, Phú Quốc...",
                                style: Styles.headLineStyle4,
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "   Trước đó, ngày 15-8, Vietnam Airlines Group đã công bố tăng tải lần 1 phục vụ cao điểm Tết, với tổng số ghế cung ứng toàn mạng nội địa, quốc tế lên tới hàng triệu ghế trong dịp này. Hãng ghi nhận lượng khách đặt vé tăng trưởng nhanh trong những ngày giáp Tết.",
                                style: Styles.headLineStyle4,
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "   Đặc biệt, hành khách có xu hướng đặt hành trình có ngày khởi hành bay sớm hơn so với các năm trước. Giá vé bán Tết năm nay vẫn mở bán linh hoạt theo tình hình thị trường với đa dạng các mức giá và tuân thủ quy định giá trần nội địa.",
                                style: Styles.headLineStyle4,
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "   Trên website bán vé của Vietnam Airlines, vé chặng TP.HCM đi Hà Nội, Hải Phòng các ngày 16-1 đến 19-1 (25 đến 28 tháng chạp) đều có giá thấp nhất khoảng 3,5 triệu đồng/lượt. Chặng TP.HCM đến Thanh Hóa chỉ còn ghế thương gia, giá gần 6 triệu đồng, chiều ngược lại sau Tết cũng còn khá ít vé loại 3-3,5 triệu đồng.  ",
                                style: Styles.headLineStyle4,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      SizedBox(
                        width: size.width * 1.1,
                        height: AppLayout.getHeight(
                            GetPlatform.isAndroid == true ? 700 : 100),
                        child: Container(
                          height: AppLayout.getHeight(650),
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getHeight(15),
                              vertical: AppLayout.getWidth(15)),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(20)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 1,
                                    spreadRadius: 1)
                              ]),
                          child: Column(
                            children: [
                              Container(
                                height: AppLayout.getHeight(200),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        AppLayout.getHeight(12)),
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/news4.jpg"))),
                              ),
                              Gap(AppLayout.getHeight(25)),
                              Text(
                                "Đặt vé máy bay Tết 2023 với mức giá cạnh tranh từ Vietnam Airlines",
                                style: Styles.headLineStyle1,
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "   Theo đó, lịch nghỉ Tết Nguyên Đán 2023 dự kiến kéo dài trong 9 ngày liên tục, từ Thứ Bảy (21/01/2023) đến hết ngày Chủ Nhật (29/01/2023), tức là từ 30 Tháng Chạp năm Nhâm Dần tới hết ngày mùng 8 tháng Giêng năm Quý Mão.",
                                style: Styles.headLineStyle4,
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "   Với lịch nghỉ Tết khá dài như vậy, chắc chắn nhiều người sẽ dự định đặt vé máy bay để về quê đón Tết cùng gia đình, người thân. Chính vì vậy, để đáp ứng nhu cầu đi lại dịp Tết Quý Mão 2023, VNA Group (gồm 3 hãng Vietnam Airlines, Pacific Airlines và VASCO) sẽ cung ứng hàng triệu ghế trên toàn mạng bay nội địa và quốc tế, trong giai đoạn từ 06/01/2023 đến 05/02/2023 (tức 15 tháng Chạp năm Nhâm Dần đến 15 tháng Giêng năm Quý Mão). Vé đã bắt đầu mở bán từ ngày 15/08/2022 trên website, ứng dụng di động, các phòng vé và đại lý chính thức của Vietnam Airlines.",
                                style: Styles.headLineStyle4,
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "   Một số hành trình bay Tết sẽ được Vietnam Airlines quan tâm cung ứng nhiều chỗ ngồi nhằm đáp ứng cho nhu cầu bay của người dân có thể kể đến như: Các hành trình bay đến Hà Nội, Hải Phòng, Thanh Hóa, Huế, Đà Nẵng, Vinh….",
                                style: Styles.headLineStyle4,
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "   Song song với việc mở bán vé Tết sớm, Vietnam Airlines cũng đưa ra một số khuyến cáo đối với khách hàng về việc đặt vé máy bay Tết 2023 vào thời điểm nào là hợp lý.",
                                style: Styles.headLineStyle4,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
