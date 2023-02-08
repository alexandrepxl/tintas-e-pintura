import 'package:hive/hive.dart';
import 'package:tintasepintura/app/data/models/hive_history.dart';

part 'hive_histories.g.dart';

@HiveType(typeId: 1)
class HiveHistories extends HiveObject {
  @HiveField(0, defaultValue: [])
  List<HiveHistory> items;

  HiveHistories({
    required this.items,
  });
}