import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tintasepintura/app/ui/history/history_view_model.dart';
import 'package:tintasepintura/app/ui/history/widgets/history_item.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HistoryViewModel>(
      init: HistoryViewModel(),
      builder: (vm) {
        return Column(
          children: [
            Obx(() => vm.isLoad.value ? Flexible(
              child: ListView.builder(
                itemCount: vm.histories.length,
                itemBuilder: (context, index) {
                  return const HistoryItem();
                },
              ),
            ) : const SizedBox(
                 width: 45.0,
                height: 45.0,
                child: CircularProgressIndicator())),
          ],
        );
      },
    );
  }
}
