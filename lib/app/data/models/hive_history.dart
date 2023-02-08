import 'package:hive/hive.dart';

part 'hive_history.g.dart';

@HiveType(typeId: 0)
class HiveHistory extends HiveObject {
  @HiveField(0, defaultValue: 0)
  int l18;
  @HiveField(1, defaultValue: 0)
  int l36;
  @HiveField(2, defaultValue: 0)
  int l25;
  @HiveField(3, defaultValue: 0)
  int l05;
  @HiveField(4, defaultValue: 0.0)
  double litersOfPaint;
  @HiveField(5, defaultValue: 0.0)
  double totalArea;

  HiveHistory({
    required this.l05,
    required this.l25,
    required this.l36,
    required this.l18,
    required this.litersOfPaint,
    required this.totalArea
  });
}