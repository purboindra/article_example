import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/impian_controller.dart';

class ImpianView extends GetView<ImpianController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ImpianView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SizedBox(
          width: Get.width,
          height: Get.size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Impian & Target',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              _impianAndTarget(),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Team Player',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              _teamPlayer(),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Riwayat Performence',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              _riwayatPerformence(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded _riwayatPerformence() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.black,
          ),
          color: Colors.grey.shade300,
        ),
        child: Column(
          children: [
            Container(
              width: Get.width,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tahun',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Januari',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Februari',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Maret',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Tidak ada ada',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _teamPlayer() {
    return Column(
      children: [
        Container(
          color: Colors.grey.shade300,
          child: TabBar(
            controller: controller.teamPlayerController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.purple,
            indicatorWeight: 5,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
            labelStyle: TextStyle(
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                child: Text('Anggota'),
              ),
              Tab(
                child: Text("Undangan"),
              ),
            ],
          ),
        ),
        Container(
          height: 6,
          color: Colors.white,
        ),
        Container(
          width: Get.size.width,
          height: 180,
          color: Colors.grey.shade300,
          child: TabBarView(
            controller: controller.teamPlayerController,
            children: [
              Column(
                children: [
                  Container(
                    width: Get.width,
                    color: Colors.black,
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ID Mitra',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Nama',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Januari',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    // height: 50,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Tidak ada data',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Material(
                              color: Colors.grey.shade100,
                              child: InkWell(
                                onTap: () {
                                  print('tap tambah impian');
                                },
                                child: Container(
                                  width: 180,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add,
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        Text('Tambah Anggota'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Text('2'),
              ),
            ],
          ),
        )
      ],
    );
  }

  Column _impianAndTarget() {
    return Column(
      children: [
        Container(
          color: Colors.grey.shade300,
          child: TabBar(
            controller: controller.impianController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.purple,
            indicatorWeight: 5,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
            labelStyle: TextStyle(
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                child: Text('Impian'),
              ),
              Tab(
                child: Text("Target"),
              ),
            ],
          ),
        ),
        Container(
          height: 6,
          color: Colors.white,
        ),
        Container(
          width: Get.size.width,
          height: 150,
          color: Colors.grey.shade300,
          child: TabBarView(
            controller: controller.impianController,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Tidak ada data',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Material(
                        color: Colors.grey.shade100,
                        child: InkWell(
                          onTap: () {
                            print('tap tambah impian');
                          },
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text('Tambah impian'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Text('2'),
              ),
            ],
          ),
        )
      ],
    );
  }
}


// SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 26,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(
//                 height: 25,
//               ),
//               Text(
//                 'Impian & Target',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Container(
//                 width: Get.width,
//                 color: Colors.blue,
//                 child: Column(
//                   children: [
//                     TabBar(
//                       indicatorColor: Colors.purple,
//                       indicatorWeight: 3,
//                       controller: controller.controller,
//                       tabs: [
//                         Tab(
//                           iconMargin: EdgeInsets.zero,
//                           icon: Icon(
//                             Icons.email,
//                             color: Colors.white,
//                           ),
//                           text: "Email",
//                           // child: Center(
//                           //   child: Text('data'),
//                           // ),
//                         ),
//                         Tab(
//                           iconMargin: EdgeInsets.zero,
//                           icon: Icon(
//                             Icons.email,
//                             color: Colors.white,
//                           ),
//                           text: "Email",
//                           // child: Center(
//                           //   child: Text('data'),
//                           // ),
//                         ),
//                       ],
//                     ),
//                     Container(
//                       height: 4,
//                       color: Colors.white,
//                     ),
//                     Container(
//                       width: Get.width,
//                       height: 400,
//                       color: Colors.green,
//                       child: TabBarView(
//                         controller: controller.controller,
//                         children: [
//                           Container(
//                             height: 200,
//                             child: Center(
//                               child: Text('1'),
//                             ),
//                           ),
//                           Container(
//                             height: 200,
//                             child: Center(
//                               child: Text('2'),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),