import 'package:fleet_vision/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: 368,
              width: 523,
              decoration: BoxDecoration(
                color: MyColors.service,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Service and Maintainance
                          Text(
                            'Service and Maintainance',
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Colors.white),
                            ),
                          ),
                          //View All
                          Text(
                            'View All',
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TabBar(
                        controller: tabController,
                        indicatorColor: Colors.transparent,
                        tabs: [
                          InkWell(
                            onTap: () {
                              tabController.animateTo(0);
                            },
                            child: Container(
                              height: 30,
                              width: 237.5,
                              color: tabController.index == 0
                                  ? MyColors.onTapColor
                                  : Colors.transparent,
                              child: Center(
                                child: Text(
                                  'Over Due (5)',
                                  style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              tabController.animateTo(1);
                            },
                            child: Container(
                              height: 30,
                              width: 237.5,
                              color: tabController.index == 1
                                  ? MyColors.onTapColor
                                  : Colors.transparent,
                              child: Center(
                                child: Text(
                                  'Over Due Soon (4)',
                                  style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // child: Row(
                      //   children: [
                      //     Container(
                      //       height: 30,
                      //       width: 237.5,
                      //       color: MyColors.onTapColor,
                      //       child: Center(
                      //         child: Text(
                      //           'Over Due (5)',
                      //           style: GoogleFonts.roboto(
                      //             textStyle: const TextStyle(
                      //                 fontWeight: FontWeight.w400,
                      //                 fontSize: 20,
                      //                 color: Colors.white),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       height: 30,
                      //       width: 237.5,
                      //       // color: MyColors.onTapColor,
                      //       child: Center(
                      //         child: InkWell(
                      //           onTap: () {
                      //             Navigator.push(
                      //                 context,
                      //                 MaterialPageRoute(
                      //                   builder: (context) =>
                      //                       OverDueSoonWidget(),
                      //                 ));
                      //           },
                      //           child: Text(
                      //             'Over Due Soon (2)',
                      //             style: GoogleFonts.roboto(
                      //               textStyle: const TextStyle(
                      //                   fontWeight: FontWeight.w400,
                      //                   fontSize: 20,
                      //                   color: Colors.white),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ),
                    Container(
                      height: 450,
                      // width: 600,
                      child: TabBarView(
                          controller: tabController,
                          children: const [
                            Column(
                              children: [
                                SizedBox(height: 20),
                                RepairDetailWidget(
                                  partName: 'Brakes Repair',
                                  overDueDetails: '3 Days Overdue',
                                ),
                                RepairDetailWidget(
                                  partName: 'Oil Repair',
                                  overDueDetails: '7 Days Overdue',
                                ),
                                RepairDetailWidget(
                                  partName: 'Tyre Repair',
                                  overDueDetails: '12 Days Overdue',
                                ),
                                RepairDetailWidget(
                                  partName: 'Coolant Tank Repair',
                                  overDueDetails: '5 Days Overdue',
                                ),
                                RepairDetailWidget(
                                  partName: 'Clutch Repair',
                                  overDueDetails: '5 Days Overdue',
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(height: 20),
                                RepairDetailWidget(
                                  partName: 'Oil Repair',
                                  overDueDetails: 'Overdue in next 3 days',
                                ),
                                RepairDetailWidget(
                                  partName: 'Break Repair',
                                  overDueDetails: 'Overdue in next 5 days',
                                ),
                                RepairDetailWidget(
                                  partName: 'Coolant Water Repair',
                                  overDueDetails: 'Overdue in next 10 days',
                                ),
                                RepairDetailWidget(
                                  partName: 'Repair',
                                  overDueDetails: 'Overdue in next 15 days',
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RepairDetailWidget extends StatelessWidget {
  const RepairDetailWidget(
      {super.key, required this.partName, required this.overDueDetails});

  final String partName;
  final String overDueDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 40,
      ),
      child: Row(
        children: [
          //Icon 01
          const Icon(
            Icons.settings,
            color: Colors.white,
          ),
          const SizedBox(width: 20),

          //Repair Details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                partName,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                overDueDetails,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Colors.grey),
                ),
              ),
            ],
          ),
          const Spacer(),

          //View More Icon
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class OverDueSoonWidget extends StatelessWidget {
  const OverDueSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: 368,
              width: 523,
              decoration: BoxDecoration(
                color: MyColors.service,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Over Due Soon Detail Page',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
