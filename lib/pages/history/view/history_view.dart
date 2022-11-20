// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getcash/pages/history/controller/history_controller.dart';

class History extends StatelessWidget {
  History({super.key});

  final historyontroller = Get.put(HistoryController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueGrey,
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
                itemBuilder: ((context, index) => SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 8, right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(historyontroller.data[index].date
                                            .toString() +
                                        "\t" +
                                        historyontroller.data[index].time
                                            .toString()),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.edit)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.download)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.delete))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(historyontroller.data[index].payeename
                                        .toString()
                                        .toUpperCase()),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('₹\t' +
                                          historyontroller.data[index].totamt
                                              .toString() +
                                          "-/"),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 15, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(""),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("2000 x" +
                                          "\t" +
                                          historyontroller
                                              .data[index].twothousand
                                              .toString()),
                                      Text("500 x" +
                                          "\t" +
                                          historyontroller
                                              .data[index].fivehundred
                                              .toString()),
                                      Text("200 x" +
                                          "\t" +
                                          historyontroller
                                              .data[index].twohundred
                                              .toString()),
                                      Text("100 x" +
                                          "\t" +
                                          historyontroller.data[index].hundred
                                              .toString()),
                                      Text("50 x " +
                                          "\t" +
                                          historyontroller.data[index].fifty
                                              .toString()),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 10),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("20 x" +
                                          "\t" +
                                          historyontroller.data[index].twenty
                                              .toString()),
                                      Text("10 x" +
                                          "\t" +
                                          historyontroller.data[index].ten
                                              .toString()),
                                      Text("5 x" +
                                          "\t" +
                                          historyontroller.data[index].five
                                              .toString()),
                                      Text("2 x" +
                                          "\t" +
                                          historyontroller.data[index].two
                                              .toString()),
                                      Text("1 x" +
                                          "\t" +
                                          historyontroller.data[index].one
                                              .toString()),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ))))));
  }
}
