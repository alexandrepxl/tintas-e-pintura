import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tintasepintura/app/ui/home/home_view_model.dart';
import 'package:tintasepintura/app/ui/home/widgets/input_wall_size.dart';
import 'package:tintasepintura/core/values/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (vm) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            color: const Color.fromRGBO(242, 245, 249, 1.0),
            padding: const EdgeInsets.only(top: 30.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Selecione uma parede e calcule",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(78, 78, 78, 1.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Obx(
                    () => vm.showPreviewInto.value
                        ? Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: 250.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        vm.selectingWall("l");
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2.0, right: 5.0),
                                        child: Image.asset(
                                          AppImages.wallLeft,
                                          height: 200.0,
                                          opacity: AlwaysStoppedAnimation(
                                              vm.wallActive.value == "l" || vm
                                                  .bindingPaints('l')
                                                  .value
                                                  .isNotEmpty
                                                  ? 1.0
                                                  : 0.3),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        vm.selectingWall("r");
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5.0, right: 2.0),
                                        child: Image.asset(
                                          AppImages.wallRight,
                                          height: 200.0,
                                          opacity: AlwaysStoppedAnimation(
                                              vm.wallActive.value == "r" || vm
                                                  .bindingPaints('r')
                                                  .value
                                                  .isNotEmpty
                                                  ? 1.0
                                                  : 0.3),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 250.0,
                                height: 200.0,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        vm.selectingWall("t");
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2.0, bottom: 5.0),
                                        child: Image.asset(
                                          AppImages.wallTop,
                                          width: 250.0,
                                          opacity: AlwaysStoppedAnimation(vm.wallActive.value == "t" || vm
                                              .bindingPaints('t')
                                              .value
                                              .isNotEmpty ? 1.0 : 0.3),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        vm.selectingWall("b");
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5.0, bottom: 2.0),
                                        child: Image.asset(
                                          AppImages.wallBottom,
                                          width: 250.0,
                                          opacity: AlwaysStoppedAnimation(
                                              vm.wallActive.value == "b" || vm
                                                  .bindingPaints('b')
                                                  .value
                                                  .isNotEmpty
                                                  ? 1.0
                                                  : 0.3),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 290.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "L",
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                fontSize: 18.0,
                                                color:
                                                    vm.wallActive.value == "l"
                                                        ? const Color.fromRGBO(
                                                            33, 105, 177, 1.0)
                                                        : const Color.fromRGBO(
                                                            33, 105, 177, 0.4),
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        const SizedBox(width: 26.0),
                                        if (vm
                                            .bindingPaints('l')
                                            .value
                                            .isNotEmpty)
                                          Text(
                                            vm.bindingPaints('l').value,
                                            style: GoogleFonts.montserrat(
                                              textStyle: const TextStyle(
                                                  fontSize: 18.0,
                                                  color: Color.fromRGBO(
                                                      78, 78, 78, 1.0),
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        if (vm
                                            .bindingPaints('r')
                                            .value
                                            .isNotEmpty)
                                          Text(
                                            vm.bindingPaints('r').value,
                                            style: GoogleFonts.montserrat(
                                              textStyle: const TextStyle(
                                                  fontSize: 18.0,
                                                  color: Color.fromRGBO(
                                                      78, 78, 78, 1.0),
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        const SizedBox(width: 26.0),
                                        Text(
                                          "R",
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                fontSize: 18.0,
                                                color:
                                                    vm.wallActive.value == "r"
                                                        ? const Color.fromRGBO(
                                                            33, 105, 177, 1.0)
                                                        : const Color.fromRGBO(
                                                            33, 105, 177, 0.4),
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 260.0,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "T",
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                fontSize: 18.0,
                                                color:
                                                    vm.wallActive.value == "t"
                                                        ? const Color.fromRGBO(
                                                            33, 105, 177, 1.0)
                                                        : const Color.fromRGBO(
                                                            33, 105, 177, 0.4),
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        const SizedBox(height: 20.0),
                                        if (vm
                                            .bindingPaints('t')
                                            .value
                                            .isNotEmpty)
                                          Text(
                                            vm.bindingPaints('t').value,
                                            style: GoogleFonts.montserrat(
                                              textStyle: const TextStyle(
                                                  fontSize: 18.0,
                                                  color: Color.fromRGBO(
                                                      78, 78, 78, 1.0),
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        if (vm
                                            .bindingPaints('b')
                                            .value
                                            .isNotEmpty)
                                          Text(
                                            vm.bindingPaints('b').value,
                                            style: GoogleFonts.montserrat(
                                              textStyle: const TextStyle(
                                                  fontSize: 18.0,
                                                  color: Color.fromRGBO(
                                                      78, 78, 78, 1.0),
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        const SizedBox(height: 20.0),
                                        Text(
                                          "B",
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                fontSize: 18.0,
                                                color:
                                                    vm.wallActive.value == "b"
                                                        ? const Color.fromRGBO(
                                                            33, 105, 177, 1.0)
                                                        : const Color.fromRGBO(
                                                            33, 105, 177, 0.4),
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        : const SizedBox(),
                  ),
                  Obx(
                    () => vm.wallActive.value.isNotEmpty
                        ? vm.measurementList.length < 4
                            ? InputWallSize(
                                vm.insertValues, vm.wallActive.value)
                            : Container(
                                padding: const EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(139, 139, 139, 0.5),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "Alexandre Borges de Melo",
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                          fontSize: 13.0,
                                          color:
                                              Color.fromRGBO(78, 78, 78, 1.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                        : const SizedBox(),
                  ),
                ],
              ),

            ),
          ),
        );
      },
    );
  }
}
