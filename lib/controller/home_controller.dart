import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndiaController extends GetxController {
  //geting input values from user
  final twothousandcontroller = TextEditingController().obs;
  final fivehundredcontroller = TextEditingController().obs;
  final twohundredcontroller = TextEditingController().obs;
  final hundredcontroller = TextEditingController().obs;
  final fiftycontroller = TextEditingController().obs;
  final twentycontroller = TextEditingController().obs;
  final tencontroller = TextEditingController().obs;
  final fivecontroller = TextEditingController().obs;
  final twocontroller = TextEditingController().obs;
  final onecontroller = TextEditingController().obs;
  //visible variables

  //input value geting variabls
  static var a = 0.obs,
      b = 0.obs,
      c = 0.obs,
      d = 0.obs,
      e = 0.obs,
      f = 0.obs,
      g = 0.obs,
      h = 0.obs,
      i = 0.obs,
      j = 0.obs;
  final RxInt coins = 0.obs;
  //no of notes value storing variables
  final RxInt noofnotes = 0.obs,
      aa = 0.obs,
      bb = 0.obs,
      cc = 0.obs,
      dd = 0.obs,
      ee = 0.obs,
      ff = 0.obs,
      gg = 0.obs,
      hh = 0.obs,
      ii = 0.obs,
      jj = 0.obs;

  //output value storing variables
  final RxInt total = 0.obs,
      twothousand = 0.obs,
      fivehundred = 0.obs,
      twohundred = 0.obs,
      hundred = 0.obs,
      fifty = 0.obs,
      twenty = 0.obs,
      ten = 0.obs,
      five = 0.obs,
      two = 0.obs,
      one = 0.obs;
  //no of notes sum function
  notessum() {
    noofnotes.value = aa.value +
        bb.value +
        cc.value +
        dd.value +
        ee.value +
        ff.value +
        gg.value;

//coins sum
    coins.value = ii.value + hh.value + jj.value;
  }

  //total sum function
  totalsum() {
    total.value = twothousand.value +
        fivehundred.value +
        twohundred.value +
        hundred.value +
        fifty.value +
        twenty.value +
        ten.value +
        five.value +
        two.value +
        one.value;
  }

  //all textfield clear function
  clearcontroller() {
    twothousandcontroller.value.clear();
    fivehundredcontroller.value.clear();
    twohundredcontroller.value.clear();
    hundredcontroller.value.clear();
    fiftycontroller.value.clear();
    twentycontroller.value.clear();
    tencontroller.value.clear();
    fivecontroller.value.clear();
    twocontroller.value.clear();
    onecontroller.value.clear();
  }
  //

  @override
  void onInit() {
    super.onInit();

    twothousandcontroller.value.addListener(() {
      // 2000 rupee
      if (twothousandcontroller.value.text == '') {
        a.value = 0;
      } else {
        a.value = int.parse(twothousandcontroller.value.text);
      }
      aa.value = a.value;
      twothousand.value = a.value * 2000;
      notessum();
      totalsum();
    });
    //500 rupee
    fivehundredcontroller.value.addListener(() {
      if (fivehundredcontroller.value.text == '') {
        b.value = 0;
      } else {
        b.value = int.parse(fivehundredcontroller.value.text);
      }
      bb.value = b.value;
      fivehundred.value = b.value * 500;
      notessum();
      totalsum();
    });
    //200 rupee
    twohundredcontroller.value.addListener(() {
      if (twohundredcontroller.value.text == '') {
        c.value = 0;
      } else {
        c.value = int.parse(twohundredcontroller.value.text);
      }
      cc.value = c.value;
      twohundred.value = c.value * 200;
      notessum();
      totalsum();
    });
    //100 rupee
    hundredcontroller.value.addListener(() {
      if (hundredcontroller.value.text == '') {
        d.value = 0;
      } else {
        d.value = int.parse(hundredcontroller.value.text);
      }
      dd.value = d.value;
      hundred.value = d.value * 100;
      notessum();
      totalsum();
    });
    //50 rupee
    fiftycontroller.value.addListener(() {
      if (fiftycontroller.value.text == '') {
        e.value = 0;
      } else {
        e.value = int.parse(fiftycontroller.value.text);
      }
      ee.value = e.value;
      fifty.value = e.value * 50;
      notessum();
      totalsum();
    });
    //20 rupee
    twentycontroller.value.addListener(() {
      if (twentycontroller.value.text == '') {
        f.value = 0;
      } else {
        f.value = int.parse(twentycontroller.value.text);
      }
      ff.value = f.value;
      twenty.value = f.value * 20;
      notessum();
      totalsum();
    });
    //10 rupee
    tencontroller.value.addListener(() {
      if (tencontroller.value.text == '') {
        g.value = 0;
      } else {
        g.value = int.parse(tencontroller.value.text);
      }
      gg.value = g.value;
      ten.value = g.value * 10;
      notessum();
      totalsum();
    });
    //5 rupee
    fivecontroller.value.addListener(() {
      if (fivecontroller.value.text == '') {
        h.value = 0;
      } else {
        h.value = int.parse(fivecontroller.value.text);
      }
      hh.value = h.value;
      five.value = h.value * 5;
      notessum();
      totalsum();
    });
    //2 rupee
    twocontroller.value.addListener(() {
      if (twocontroller.value.text == '') {
        i.value = 0;
      } else {
        i.value = int.parse(twocontroller.value.text);
      }
      ii.value = i.value;
      two.value = i.value * 2;
      notessum();
      totalsum();
    });
    //1 rupee
    onecontroller.value.addListener(() {
      if (onecontroller.value.text == '') {
        j.value = 0;
      } else {
        j.value = int.parse(onecontroller.value.text);
      }
      jj.value = j.value;
      one.value = j.value * 1;
      notessum();
      totalsum();
    });
  }

  @override
  void onClose() {
    super.onClose();
    twothousandcontroller.value.dispose();
    fivehundredcontroller.value.dispose();
    twohundredcontroller.value.dispose();
    hundredcontroller.value.dispose();
    fiftycontroller.value.dispose();
    twentycontroller.value.dispose();
    tencontroller.value.dispose();
    fivecontroller.value.dispose();
    twocontroller.value.dispose();
    onecontroller.value.dispose();
  }
}
