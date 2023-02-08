import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tintasepintura/app/data/models/cans.dart';
import 'package:tintasepintura/app/data/models/measurement.dart';
import 'package:tintasepintura/app/ui/home/widgets/dialog_message_error.dart';
import 'package:tintasepintura/core/utils/app_utils.dart';


class HomeViewModel extends GetxController with AppUtils{

  List<Measurement> measurementList = [];
  RxBool showWidgetInputData = false.obs;


  RxString  wallActive = "".obs;
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

  late Cans cans;
  showPaintCans(){
    double litersOfPaint = 0.0;
    measurementList.forEach((e) {litersOfPaint += e.litersOfPaint;});
    cans = paintCans(litersOfPaint);
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