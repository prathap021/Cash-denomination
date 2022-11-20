// ignore_for_file: prefer_const_constructors

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
          backgroundColor: Colors.teal,
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
                            title: Text("Delete Forever"),
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
        body: Center(child: Icon(Icons.history)),
      ),
    );
  }
}
