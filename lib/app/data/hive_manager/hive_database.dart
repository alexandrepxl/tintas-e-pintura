import 'package:hive/hive.dart';
import 'package:tintasepintura/app/data/hive_manager/hive_box_name.dart';
import 'package:tintasepintura/core/utils/app_utils.dart';

class HiveDataBase<T> with AppUtils{

  Future save<T>({required String name, required T model}) async{
    final box = await Hive.openBox(HiveBoxName.tintasepintura);
    if(box.isOpen){
      loggerVerbose(message: "🐝 $name: HIVE SAVE  🐝");
      box.put(name, model);
    }
  }


  Future<T> getData({required String name}) async {
    Box box = await Hive.openBox(HiveBoxName.tintasepintura);
    var result = box.get(name);
    loggerVerbose(message: "🐝 HIVE READING $name  $result 🐝");
    return result;
  }


}