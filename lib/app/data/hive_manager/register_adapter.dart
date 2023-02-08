import 'package:hive/hive.dart';
import 'package:tintasepintura/app/data/models/hive_histories.dart';
import 'package:tintasepintura/app/data/models/hive_history.dart';

class Register{
  static adapter(){
    return [
      Hive.registerAdapter(HiveHistoryAdapter()),
      Hive.registerAdapter(HiveHistoriesAdapter()),
    ];
  }
}