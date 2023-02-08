import 'package:tintasepintura/app/data/hive_manager/hive_box_name.dart';
import 'package:tintasepintura/app/data/hive_manager/hive_database.dart';
import 'package:tintasepintura/app/data/models/hive_histories.dart';
import 'package:tintasepintura/app/data/models/hive_history.dart';

class HomeRepository {
  HomeRepository._internal();
  static final HomeRepository _instance = HomeRepository._internal();
  static HomeRepository get instance => _instance;

  Future<HiveHistories> getHistories() => HiveDataBase<HiveHistories>().getData(name: HiveBoxName.histories);
  saveHistory(List<HiveHistory> items) => HiveDataBase().save<HiveHistories>(name: HiveBoxName.histories, model: HiveHistories(items: items));
}