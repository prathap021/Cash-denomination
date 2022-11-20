import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../database/dbhelper.dart';

class HistoryController extends GetxController {
  deletetable() async {
    var res = await DBProvider.db.deleteAllDenomination();
    debugPrint(res.toString());
  }
}
