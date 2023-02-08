import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
            Obx(
              () => vm.isLoad.value
                  ? vm.histories.isNotEmpty
                      ? Flexible(
                          child: ListView.builder(
                            itemCount: vm.histories.length,
                            itemBuilder: (context, index) {
                              final item = vm.histories[index];
                              return HistoryItem(item);
                            },
                          ),
                        )
                      : Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 100.0),
                            child: Text(
                              "Não há dados",
                              style: GoogleFonts.montserrat(
                                fontSize: 22.0,
                                color: const Color.fromRGBO(78, 78, 78, 1.0),
                              ),
                            ),
                          ),
                        )
                  : const SizedBox(
                      width: 45.0,
                      height: 45.0,
                      child: CircularProgressIndicator(),
                    ),
            ),
          ],
        );
      },
    );
  }
}
