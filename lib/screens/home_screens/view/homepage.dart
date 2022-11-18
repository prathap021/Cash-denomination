// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';
import '../../setting_screen/controller/setting_controller.dart';
import '../../setting_screen/view/setting_view.dart';
import 'package:number_to_words/number_to_words.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final indiacontroller = Get.put(IndiaController());
  final settingcontroller = Get.put(SettingController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "CASH COUNTER",
                    style: TextStyle(fontSize: 15, color: Colors.indigo),
                  ),
                  IconButton(
                      color: Colors.indigo,
                      onPressed: () {
                        indiacontroller.clearcontroller();
                      },
                      icon: Icon(Icons.clear_all)),
                  IconButton(
                      color: Colors.indigo,
                      onPressed: () {},
                      icon: Icon(Icons.history)),
                  PopupMenuButton(
                      child: Icon(Icons.more_vert),
                      itemBuilder: (context) => [
                            PopupMenuItem(
                                child: Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.abc_outlined),
                                ),
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.light)),
                                IconButton(
                                    onPressed: () {
                                      Get.to(() => Settingview());
                                    },
                                    icon: Icon(Icons.settings))
                              ],
                            ))
                          ]),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '₹\t' +
                                indiacontroller.total.value.toString() +
                                "-/",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "Notes:\t" +
                                      indiacontroller.noofnotes.value
                                          .toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 5),
                                child: Text(
                                  "Coins:\t" +
                                      indiacontroller.coins.value.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              NumberToWord()
                                  .convert('en-in', indiacontroller.total.value)
                                  .toUpperCase(),
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !settingcontroller.twothousandvisible.value,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 60,
                    child: Card(
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFFF00FF),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              height: 45,
                              width: 85,
                              child: Center(
                                  child: Text(
                                "₹2000",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "X",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                            width: 85,
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                              controller:
                                  indiacontroller.twothousandcontroller.value,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]'))
                              ],
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "=",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "₹" +
                                  indiacontroller.twothousand.value.toString(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !settingcontroller.fivehundredvisible.value,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 60,
                    child: Card(
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF918E85),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              height: 45,
                              width: 85,
                              child: Center(
                                  child: Text(
                                "₹500",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "X",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                            width: 85,
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                              controller:
                                  indiacontroller.fivehundredcontroller.value,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]'))
                              ],
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "=",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "₹" +
                                  indiacontroller.fivehundred.value.toString(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !settingcontroller.twohundredvisible.value,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 60,
                    child: Card(
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              height: 45,
                              width: 85,
                              child: Center(
                                  child: Text(
                                "₹200",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "X",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                            width: 85,
                            child: TextField(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              controller:
                                  indiacontroller.twohundredcontroller.value,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]'))
                              ],
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "=",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "₹" + indiacontroller.twohundred.value.toString(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !settingcontroller.hundredvisible.value,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 60,
                    child: Card(
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigoAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              height: 45,
                              width: 85,
                              child: Center(
                                  child: Text(
                                "₹100",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "X",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                            width: 85,
                            child: TextField(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              controller:
                                  indiacontroller.hundredcontroller.value,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]'))
                              ],
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "=",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "₹" + indiacontroller.hundred.value.toString(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !settingcontroller.fiftyvisible.value,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 60,
                    child: Card(
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 21, 188, 183),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              height: 45,
                              width: 85,
                              child: Center(
                                  child: Text(
                                "₹50",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "X",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                            width: 85,
                            child: TextField(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              controller: indiacontroller.fiftycontroller.value,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]'))
                              ],
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "=",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "₹" + indiacontroller.fifty.value.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !settingcontroller.twentyvisible.value,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 60,
                    child: Card(
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF9ACD32),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              height: 45,
                              width: 85,
                              child: Center(
                                  child: Text(
                                "₹20",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "X",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                            width: 85,
                            child: TextField(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              controller:
                                  indiacontroller.twentycontroller.value,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]'))
                              ],
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "=",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "₹" + indiacontroller.twenty.value.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !settingcontroller.tenvisible.value,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 60,
                    child: Card(
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF7B3F00),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              height: 45,
                              width: 85,
                              child: Center(
                                  child: Text(
                                "₹10",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "X",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                            width: 85,
                            child: TextField(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              controller: indiacontroller.tencontroller.value,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]'))
                              ],
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "=",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "₹" + indiacontroller.ten.value.toString(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !settingcontroller.fivevisible.value,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 60,
                    child: Card(
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFD4AF37),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              height: 45,
                              width: 85,
                              child: Center(
                                  child: Text(
                                "₹5",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "X",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                            width: 85,
                            child: TextField(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              controller: indiacontroller.fivecontroller.value,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]'))
                              ],
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "=",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "₹" + indiacontroller.five.value.toString(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !settingcontroller.twovisible.value,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 60,
                    child: Card(
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              height: 45,
                              width: 85,
                              child: Center(
                                  child: Text(
                                "₹2",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "X",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                            width: 85,
                            child: TextField(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              controller: indiacontroller.twocontroller.value,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]'))
                              ],
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "=",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "₹" + indiacontroller.two.value.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !settingcontroller.onevisible.value,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 60,
                    child: Card(
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              height: 45,
                              width: 85,
                              child: Center(
                                  child: Text(
                                "₹1",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "X",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                            width: 85,
                            child: TextField(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              controller: indiacontroller.onecontroller.value,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]'))
                              ],
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "=",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "₹" + indiacontroller.one.value.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
