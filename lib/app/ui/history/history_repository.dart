import 'package:tintasepintura/app/data/hive_manager/hive_box_name.dart';
import 'package:tintasepintura/app/data/hive_manager/hive_database.dart';
import 'package:tintasepintura/app/data/models/hive_histories.dart';

class HistoryRepository{
  HistoryRepository._internal();
  static final HistoryRepository _instance = HistoryRepository._internal();
  static HistoryRepository get instance => _instance;

  Future<HiveHistories> getHistories() => HiveDataBase<HiveHistories>().getData(name: HiveBoxName.histories);
}