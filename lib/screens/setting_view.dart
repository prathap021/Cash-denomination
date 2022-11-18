// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getcash/screens/setting_screen/controller/setting_controller.dart';

class Settingview extends StatefulWidget {
  const Settingview({super.key});

  @override
  State<Settingview> createState() => _SettingviewState();
}

class _SettingviewState extends State<Settingview> {
  final settingcontroller = Get.put(SettingController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: [
              Card(
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Text(
                            "₹2000",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )),
                      Switch.adaptive(
                          value: settingcontroller.twothousandvisible.value,
                          onChanged: (value) {
                            setState(() {
                              settingcontroller.twothousandvisible.value =
                                  value;
                              settingcontroller.twothousandWrite();
                            });
                          })
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "₹500",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Switch.adaptive(
                          value: settingcontroller.fivehundredvisible.value,
                          onChanged: (value) {
                            setState(() {
                              settingcontroller.fivehundredvisible.value =
                                  value;
                              settingcontroller.fivehundredWrite();
                            });
                          })
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "₹200",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Switch.adaptive(
                          value: settingcontroller.twohundredvisible.value,
                          onChanged: (value) {
                            setState(() {
                              settingcontroller.twohundredvisible.value = value;
                              settingcontroller.twohundredWrite();
                            });
                          })
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "₹100",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Switch.adaptive(
                          value: settingcontroller.hundredvisible.value,
                          onChanged: (value) {
                            setState(() {
                              settingcontroller.hundredvisible.value = value;
                              settingcontroller.hundredWrite();
                            });
                          })
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "₹50",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Switch.adaptive(
                          value: settingcontroller.fiftyvisible.value,
                          onChanged: (value) {
                            setState(() {
                              settingcontroller.fiftyvisible.value = value;
                              settingcontroller.fifityWrite();
                            });
                          })
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "₹20",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Switch.adaptive(
                          value: settingcontroller.twentyvisible.value,
                          onChanged: (value) {
                            setState(() {
                              settingcontroller.twentyvisible.value = value;
                              settingcontroller.twentyWrite();
                            });
                          })
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "₹10",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Switch.adaptive(
                          value: settingcontroller.tenvisible.value,
                          onChanged: (value) {
                            setState(() {
                              settingcontroller.tenvisible.value = value;
                              settingcontroller.tenWrite();
                            });
                          })
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "₹5",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Switch.adaptive(
                          value: settingcontroller.fivevisible.value,
                          onChanged: (value) {
                            setState(() {
                              settingcontroller.fivevisible.value = value;
                              settingcontroller.fiveWrite();
                            });
                          })
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "₹2",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Switch.adaptive(
                          value: settingcontroller.twovisible.value,
                          onChanged: (value) {
                            setState(() {
                              settingcontroller.twovisible.value = value;
                              settingcontroller.twoWrite();
                            });
                          })
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "₹1",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Switch.adaptive(
                          value: settingcontroller.onevisible.value,
                          onChanged: (value) {
                            setState(() {
                              settingcontroller.onevisible.value = value;
                              settingcontroller.oneWrite();
                            });
                          })
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
