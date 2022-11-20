import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getcash/models/denomination_model.dart';

import '../../../database/dbhelper.dart';

class HistoryController extends GetxController {
  var result = DBProvider.db.obs;
  final RxList<Denomination> data = <Denomination>[].obs;

  deletetable() async {
    var res = await result.value.deleteAllDenomination();
    debugPrint(res.toString());
  }

  getvalue() async {
    var get = await result.value
        .getAllDenomination()
        .then((value) => data.value = value);
    debugPrint(get.toString());
    debugPrint(data.length.toString());
  }

  @override
  void onInit() {
    debugPrint('fetching');
    getvalue();
    super.onInit();
  }
}
