// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getcash/pages/history/controller/history_controller.dart';
import 'package:number_to_words/number_to_words.dart';

class History extends StatelessWidget {
  History({super.key});

  final historyontroller = Get.put(HistoryController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.indigoAccent,
              title: Text("history"),
              centerTitle: true,
              actions: [
                IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.delete_forever),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return AlertDialog(
                                elevation: 10,
                                title: Text("clear history"),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                actions: [
                                  IconButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      icon: Text(
                                        "✗",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.redAccent),
                                      )),
                                  IconButton(
                                      onPressed: () {
                                        historyontroller.deletetable();

                                        Get.back();
                                        Get.snackbar("HISTORY", "CLEAR",
                                            snackPosition:
                                                SnackPosition.BOTTOM);
                                      },
                                      icon: Text(
                                        "✔",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.lightGreen),
                                      ))
                                ],
                              );
                            });
                          });
                    }),
              ],
            ),
            body: Obx(() => ListView.builder(
                itemCount: historyontroller.data.length,
                itemBuilder: ((context, index) {
                  int rindex = historyontroller.data.length - 1 - index;
                  return SizedBox(
                    height: 260,
                    width: double.infinity,
                    child: Card(
                      color: Colors.white30,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, left: 8, right: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    historyontroller.data[rindex].date
                                            .toString() +
                                        "\t",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.pink),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    historyontroller.data[rindex].time
                                            .toString() +
                                        "\t",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      // historyontroller.result.value.deleteid(
                                      //     historyontroller.data[rindex].id!);
                                    },
                                    icon: Text(
                                      "✗",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color: Colors.redAccent),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Text(
                                      ">",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          color: Colors.green),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1.5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      historyontroller.data[rindex].payeename
                                          .toString()
                                          .toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '₹\t' +
                                            historyontroller.data[rindex].totamt
                                                .toString() +
                                            "-/",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 15, top: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      NumberToWord()
                                          .convert(
                                              'en-in',
                                              int.parse(historyontroller
                                                  .data[rindex].totamt
                                                  .toString()))
                                          .toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.5,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "2000 x" +
                                          "\t" +
                                          historyontroller
                                              .data[rindex].twothousand
                                              .toString(),
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                        "500 x" +
                                            "\t" +
                                            historyontroller
                                                .data[rindex].fivehundred
                                                .toString(),
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "200 x" +
                                          "\t" +
                                          historyontroller
                                              .data[rindex].twohundred
                                              .toString(),
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                        "100 x" +
                                            "\t" +
                                            historyontroller
                                                .data[rindex].hundred
                                                .toString(),
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "50 x " +
                                          "\t" +
                                          historyontroller.data[rindex].fifty
                                              .toString(),
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "20 x" +
                                          "\t" +
                                          historyontroller.data[rindex].twenty
                                              .toString(),
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "10 x" +
                                          "\t" +
                                          historyontroller.data[rindex].ten
                                              .toString(),
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "5 x" +
                                          "\t" +
                                          historyontroller.data[rindex].five
                                              .toString(),
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "2 x" +
                                          "\t" +
                                          historyontroller.data[rindex].two
                                              .toString(),
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "1 x" +
                                          "\t" +
                                          historyontroller.data[rindex].one
                                              .toString(),
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                })))));
  }
}
