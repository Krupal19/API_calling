import 'package:api_calling/controllers/rss_feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxApiScreen extends StatefulWidget {
  const GetxApiScreen({super.key});

  @override
  State<GetxApiScreen> createState() => _GetxApiScreenState();
}

class _GetxApiScreenState extends State<GetxApiScreen> {
  final RssFeedController rssFeedController = Get.put(RssFeedController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 16),
        child: Obx(
          () {
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: const Color(0xE3E2E8F3),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color(0xA58A99A2),
                      width: 2,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                        child: Image.network(
                          "https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
