import 'package:get/get.dart';
import 'package:tintasepintura/app/data/models/hive_history.dart';
import 'package:tintasepintura/app/ui/history/history_repository.dart';
import 'package:tintasepintura/core/utils/app_utils.dart';

class HistoryViewModel extends GetxController with AppUtils{

  final repository = HistoryRepository.instance;


  List<HiveHistory> histories = [];
  RxBool isLoad = false.obs;
  Future getHistory() async{
    try{
     isLoad.value = false;
     final data = await repository.getHistories();
     if(data.items.isNotEmpty) histories = data.items;
     histories.sort((a, b) => b.createdAt.compareTo(a.createdAt)
     );
    }catch(e){
      loggerError(message: e);
    }finally{
      isLoad.value = true;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getHistory();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}