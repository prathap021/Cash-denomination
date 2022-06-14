// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const Deno(),
    );
  }
}

class Deno extends StatefulWidget {
  const Deno({Key? key}) : super(key: key);

  @override
  State<Deno> createState() => _DenoState();
}

class _DenoState extends State<Deno> {
  TextEditingController twot = TextEditingController();
  TextEditingController fiveh = TextEditingController();
  TextEditingController twoh = TextEditingController();

  String res = '0';
  var zero = 0;
  void sum() {
    if (twot == '') {
      zero = 0;
    } else {
      zero = int.parse(twot.text);
    }
    int two = int.parse(fiveh.text);
    int three = int.parse(twoh.text);

    int c = zero * 2000 + two * 500 + three * 200;
    res = c.toString();
    debugPrint(res);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Denominator',
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.white70,
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 10, color: Colors.indigo)),
                height: 200,
                width: double.infinity,
                child: Center(child: Text(res)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 100,
                      child: TextField(
                          controller: twot,
                          decoration: InputDecoration(
                              labelText: "₹2000",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: 100,
                      child: TextField(
                          controller: fiveh,
                          decoration: InputDecoration(
                              labelText: "₹500",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: 100,
                      child: TextField(
                          controller: twoh,
                          decoration: InputDecoration(
                              labelText: "₹200",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))))),
                )
              ],
            ),
            const Divider(
              indent: 30,
              endIndent: 30,
              color: Colors.red,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 100,
                      child: TextField(
                          controller: null,
                          decoration: InputDecoration(
                              labelText: "₹100",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: 100,
                      child: TextField(
                          controller: null,
                          decoration: InputDecoration(
                              labelText: "₹50",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: 100,
                      child: TextField(
                          controller: null,
                          decoration: InputDecoration(
                              labelText: "₹20",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))))),
                ),
              ],
            ),
            const Divider(
              indent: 30,
              endIndent: 30,
              color: Colors.red,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 100,
                      child: TextField(
                          controller: null,
                          decoration: InputDecoration(
                              labelText: "₹10",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: 100,
                      child: TextField(
                          controller: null,
                          decoration: InputDecoration(
                              labelText: "₹5",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: 100,
                      child: TextField(
                          controller: null,
                          decoration: InputDecoration(
                              labelText: "₹2",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))))),
                )
              ],
            ),
            const Divider(
              indent: 30,
              endIndent: 30,
              color: Colors.red,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 100,
                      child: TextField(
                          controller: null,
                          decoration: InputDecoration(
                              labelText: "₹1",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                    )),
              ],
            ),
            const Divider(
              indent: 30,
              endIndent: 30,
              color: Colors.red,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 30,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          sum();
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                      child: const Center(child: Text('Total')),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 30,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          twoh.clear();
                          fiveh.clear();
                          twot.clear();
                        });
                      },
                      style:
                          ElevatedButton.styleFrom(primary: Colors.redAccent),
                      child: const Center(child: Text('clear')),
                    ),
                  ),
                ),
              ],
            )
          ],
        )));
  }
}
