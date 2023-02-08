import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tintasepintura/app/data/models/cans.dart';
import 'package:tintasepintura/app/data/models/hive_history.dart';
import 'package:tintasepintura/app/data/models/measurement.dart';
import 'package:tintasepintura/app/ui/home/home_repository.dart';
import 'package:tintasepintura/app/ui/home/widgets/dialog_message_error.dart';
import 'package:tintasepintura/core/utils/app_utils.dart';


class HomeViewModel extends GetxController with AppUtils{

  final repository = HomeRepository.instance;
  List<Measurement> measurementList = [];
  RxBool showWidgetInputData = false.obs;
  RxString  wallActive = "".obs;
  late Cans cans;



  selectingWall(String wall){
    if(bindingPaints(wall).value.isEmpty) {
      wallActive.value = wall;
      showWidgetInputData.value = true;
    }
  }


  cancel(){
    wallActive.value = "";
    showWidgetInputData.value = false;
  }


  RxBool showPreviewInto = true.obs;
  insertValues(Measurement obj){
    try{
      showPreviewInto.value = false;
      final errors = validateWallSize(obj.wallWidth,obj.wallHeight,obj.windowQuantity, obj.doorQuantity);
      if(errors.isNotEmpty){
        showDialogError(errors);
        return;
      }
      obj.litersOfPaint = calculateLitersOfPaint(obj.wallWidth, obj.wallHeight, obj.windowQuantity, obj.doorQuantity).litersOfPaint;
      measurementList.add(obj);
      showWidgetInputData.value = false;
      if(measurementList.length == 4){
        showPaintCans();
      }
    }catch(e){
      loggerError(message: e);
    }finally{
      showPreviewInto.value = true;
    }
  }


  double litersOfPaint = 0.0;
  double totalArea = 0.0;
  showPaintCans(){
    measurementList.forEach((e) {
      litersOfPaint += e.litersOfPaint;
      totalArea += (e.wallWidth * e.wallHeight);
    });
    cans = paintCans(litersOfPaint);
    saveHistory();
  }



  RxString bindingPaints(String value){
    final data = measurementList.where((e) => e.wall == value).toList();
    return data.isNotEmpty ? "${data.single.litersOfPaint}L".obs : "".obs;
  }


  showDialogError(List<String> errors) async{
    await showDialog(context: Get.context!, builder: (context) {
      return DialogMessageError(errors);
    });
  }


  saveHistory() async{
    try{
      List<HiveHistory> items = [];
      try{
         final data = await repository.getHistories();
         items = data.items;
      }catch(e){
        loggerError(message: e);
      }
      items.add(HiveHistory(
          l05: cans.l25,
          l25: cans.l25,
          l36: cans.l36,
          l18: cans.l18,
          litersOfPaint: litersOfPaint,
          totalArea: totalArea,
         ));

     await repository.saveHistory(items);
    }catch(e){
      loggerError(message: e);
    }
  }




  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}