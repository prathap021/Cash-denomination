import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';

class SettingController extends GetxController {
  //slider value
  final RxDouble slide = 3.0.obs;
  final RxBool twothousandvisible = false.obs;
  final RxBool fivehundredvisible = false.obs;
  final RxBool twohundredvisible = false.obs;
  final RxBool hundredvisible = false.obs;
  final RxBool fiftyvisible = false.obs;
  final RxBool twentyvisible = false.obs;
  final RxBool tenvisible = false.obs;
  final RxBool fivevisible = false.obs;
  final RxBool twovisible = false.obs;
  final RxBool onevisible = false.obs;
  //storing visible variable values

  final box = GetStorage();

  readvisiblevalues() {
    slide.value = box.read('slide') ?? 3.0;
    fivehundredvisible.value = box.read('fivehundredvisible') ?? false;
    twothousandvisible.value = box.read('twothousandvisible') ?? false;
    twohundredvisible.value = box.read('twohundredvisible') ?? false;
    hundredvisible.value = box.read('hundredvisible') ?? false;
    fiftyvisible.value = box.read('fiftyvisible') ?? false;
    twentyvisible.value = box.read('twentyvisible') ?? false;
    tenvisible.value = box.read('tenvisible') ?? false;
    fivevisible.value = box.read('fivevisible') ?? false;
    twovisible.value = box.read('twovisible') ?? false;
    onevisible.value = box.read('onevisible') ?? false;
  }

  //input field storing function
  slidewrite() async {
    await box.write('slide', slide.value);
  }

  // 2000 value storing function
  twothousandWrite() async {
    await box.write('twothousandvisible', twothousandvisible.value);
  }

  //500 value storing function
  fivehundredWrite() async {
    await box.write('fivehundredvisible', fivehundredvisible.value);
  }

//200 value storing function
  twohundredWrite() async {
    await box.write('twohundredvisible', twohundredvisible.value);
  }

//100 value storing function
  hundredWrite() async {
    await box.write('hundredvisible', hundredvisible.value);
  }

//50 value storing function
  fifityWrite() async {
    await box.write('fiftyvisible', fiftyvisible.value);
  }

//20 value stroing function
  twentyWrite() async {
    await box.write('twentyvisible', twentyvisible.value);
  }

//10 value storing function
  tenWrite() async {
    await box.write('tenvisible', tenvisible.value);
  }

//5 value storing function
  fiveWrite() async {
    await box.write('fivevisible', fivevisible.value);
  }

//2 value storing function
  twoWrite() async {
    await box.write('twovisible', twovisible.value);
  }

//1 value storing function
  oneWrite() async {
    await box.write('onevisible', onevisible.value);
  }

  @override
  void onInit() {
    super.onInit();

    readvisiblevalues();
  }
}
