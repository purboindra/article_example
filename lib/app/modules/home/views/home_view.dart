import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            //appbar
            Container(
              width: Get.width,
              color: Colors.grey.shade100,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Artikel',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    Icon(Icons.list),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              // width: Get.size.width,
              child: ListView.builder(
                itemCount: controller.dataCard.length,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                itemBuilder: (context, index) {
                  var data = controller.dataCard[index];
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          bottom: 20,
                        ),
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade500,
                              blurRadius: 0.8,
                              spreadRadius: 0.2,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: Get.width,
                                  // height: 200,
                                  color: Colors.red,
                                  child: Image.network(
                                    data['backgroundImage']!,
                                    width: Get.width,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  width: Get.width,
                                  height: 200,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 150,
                              left: 0,
                              right: 0,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                width: Get.size.width,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          data['title']!,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    ClipOval(
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        width: 100,
                                        height: 100,
                                        color: Colors.white,
                                        child: Center(
                                          child: ClipOval(
                                            child: Image.network(
                                              data['imageUrl']!,
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 260,
                              left: 20,
                              right: 20,
                              child: Text(
                                data['description']!,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 20,
                              right: 20,
                              child: Row(
                                children: [
                                  Text(
                                    'December 25, 2022',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.share),
                                      ),
                                      Obx(() => IconButton(
                                            onPressed: () {
                                              controller.selectFav(index);
                                            },
                                            icon:
                                                controller.getFav(index).isTrue
                                                    ? Icon(
                                                        Icons.favorite,
                                                        color: Colors.red,
                                                      )
                                                    : Icon(
                                                        Icons.favorite_outline,
                                                      ),
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
