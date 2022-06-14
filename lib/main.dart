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
  //user input getting variables
  String twothousand = '', fivehundred = '';
  String twohundred = '', hundred = '';
  String fifty = '', twenty = '';
  String ten = '', five = '';
  String two = '', one = '';
  //user inpute storing variables
  int a = 0, b = 0, c = 0, d = 0, e = 0, f = 0, g = 0, h = 0, i = 0, j = 0;
  int total = 0;
  //output variable
  int twotres = 0,
      fivehres = 0,
      twohres = 0,
      hundredres = 0,
      fiftyres = 0,
      twentyres = 0,
      tenres = 0,
      fiveres = 0,
      twores = 0,
      oneres = 0;
  void sum() {
    setState(() {
      total = twotres +
          fivehres +
          twohres +
          hundredres +
          fiftyres +
          twentyres +
          tenres +
          fiveres +
          twores +
          oneres;
    });
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
            child: ListView(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 10, color: Colors.indigo)),
                  height: 200,
                  width: double.infinity,
                  child: Center(
                      child: Text(
                    '₹' + total.toString(),
                    style: TextStyle(fontSize: 30),
                  )),
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
                            onChanged: (one) {
                              setState(() {
                                twothousand = one;
                                if (twothousand == '') {
                                  a = 0;
                                } else {
                                  a = int.parse(twothousand);
                                }
                                twotres = a * 2000;
                                debugPrint('$twotres');
                                sum();
                              });
                            },
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
                            onChanged: (two) {
                              setState(() {
                                fivehundred = two;
                                if (fivehundred == '') {
                                  b = 0;
                                } else {
                                  b = int.parse(fivehundred);
                                }
                                fivehres = b * 500;
                                debugPrint('$fivehres');
                                sum();
                              });
                            },
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
                            onChanged: (three) {
                              setState(() {
                                twohundred = three;
                                if (twohundred == '') {
                                  c = 0;
                                } else {
                                  c = int.parse(twohundred);
                                }
                                twohres = c * 200;

                                sum();
                              });
                            },
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
                            onChanged: (four) {
                              setState(() {
                                hundred = four;
                                if (hundred == '') {
                                  d = 0;
                                } else {
                                  d = int.parse(hundred);
                                }
                                hundredres = d * 100;
                                sum();
                              });
                            },
                            decoration: InputDecoration(
                                labelText: "₹100",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                      )),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: 100,
                        child: TextField(
                            onChanged: (five) {
                              setState(() {
                                fifty = five;
                                if (fifty == '') {
                                  e = 0;
                                } else {
                                  e = int.parse(fifty);
                                }
                                fiftyres = e * 50;
                                sum();
                              });
                            },
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
                            onChanged: (six) {
                              setState(() {
                                twenty = six;
                                if (twenty == '') {
                                  f = 0;
                                } else {
                                  f = int.parse(twenty);
                                }
                                twentyres = f * 20;
                                sum();
                              });
                            },
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
                            onChanged: (seven) {
                              setState(() {
                                ten = seven;
                                if (ten == '') {
                                  g = 0;
                                } else {
                                  g = int.parse(ten);
                                }
                                tenres = g * 10;
                                sum();
                              });
                            },
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
                            onChanged: (eight) {
                              setState(() {
                                five = eight;
                                if (five == '') {
                                  h = 0;
                                } else {
                                  h = int.parse(five);
                                }
                                fiveres = h * 5;
                                sum();
                              });
                            },
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
                            onChanged: (nine) {
                              setState(() {
                                two = nine;
                                if (two == '') {
                                  i = 0;
                                } else {
                                  i = int.parse(two);
                                }
                                twores = i * 2;
                                sum();
                              });
                            },
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
                            onChanged: (ten) {
                              setState(() {
                                one = ten;
                                if (one == '') {
                                  j = 0;
                                } else {
                                  j = int.parse(one);
                                }
                                oneres = j * 1;
                                sum();
                              });
                            },
                            decoration: InputDecoration(
                                labelText: "₹1",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                      )),
                ],
              ),
            ],
          ),
        ])));
  }
}
