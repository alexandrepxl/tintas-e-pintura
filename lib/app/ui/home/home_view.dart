import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tintasepintura/app/ui/home/home_view_model.dart';
import 'package:tintasepintura/core/values/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(builder: (vm) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Tintas & Pintura"),
        ),
        body: Container(
          width: double.infinity,
          color: const Color.fromRGBO(242, 245, 249, 1.0),
          padding: const EdgeInsets.only(top: 30.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Selecione uma parede e calcule",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(78, 78, 78, 1.0)),
                ),
                const SizedBox(height: 20.0),
                Obx(
                  () => Stack(
                    alignment: Alignment.center,
                    children: [
                      ///
                      SizedBox(
                        width: 250.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                vm.selectingWall("l");
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 2.0, right: 5.0),
                                child: Image.asset(
                                  AppImages.wallLeft,
                                  height: 200.0,
                                  opacity: AlwaysStoppedAnimation(
                                      vm.wallActive.value == "l" ? 1.0 : 0.3),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                vm.selectingWall("r");
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 5.0, right: 2.0),
                                child: Image.asset(
                                  AppImages.wallRight,
                                  height: 200.0,
                                  opacity: AlwaysStoppedAnimation(
                                      vm.wallActive.value == "r" ? 1.0 : 0.3),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      ///
                      SizedBox(
                        width: 250.0,
                        height: 200.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                vm.selectingWall("t");
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 2.0, bottom: 5.0),
                                child: Image.asset(
                                  AppImages.wallTop,
                                  width: 250.0,
                                  opacity: AlwaysStoppedAnimation(
                                      vm.wallActive.value == "t" ? 1.0 : 0.3),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                vm.selectingWall("b");
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 2.0),
                                child: Image.asset(
                                  AppImages.wallBottom,
                                  width: 250.0,
                                  opacity: AlwaysStoppedAnimation(
                                      vm.wallActive.value == "b"
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "L",
                                  style: TextStyle(fontSize: 22.0),
                                ),
                                SizedBox(width: 26.0),
                                Text(
                                  "18 L",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  "18 L",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                                SizedBox(width: 26.0),
                                Text(
                                  "R",
                                  style: TextStyle(fontSize: 22.0),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 260.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  "T",
                                  style: TextStyle(fontSize: 22.0),
                                ),
                                SizedBox(height: 20.0),
                                Text(
                                  "18 L",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "18 L",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                                SizedBox(height: 20.0),
                                Text(
                                  "B",
                                  style: TextStyle(fontSize: 22.0),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),



                ///
                Obx(() => AnimatedOpacity(
                  duration: const Duration(milliseconds: 100),
                  opacity: vm.wallActive.value.isNotEmpty ? 1.0 : 0.0,
                  child: Container(
                    width: 300.0,
                    margin: const EdgeInsets.only(top: 50.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color.fromRGBO(255, 255, 255, 1.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(left: 16.0, top: 5.0, bottom: 5.0),
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(81,156,196, 1.0),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0))
                          ),
                          child: Text(
                            "${vm.wallActive.value}".toUpperCase(),
                            style: const TextStyle(
                              fontSize: 25.0,
                              color: Color.fromRGBO(255,255,255, 1.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        SizedBox(
                          width: 150.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Largura:",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(78, 78, 78, 0.8)),
                              ),
                              Container(
                                width: 70.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(78, 78, 78, 0.2),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: TextField(
                                  onChanged: (value) => vm.insertWidth(value),
                                  maxLines: 1,
                                  keyboardType: TextInputType.number,
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    color: Color.fromRGBO(78, 78, 78, 1.0),
                                  ),
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    hintText: "0.0",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        color: Color.fromRGBO(78, 78, 78, 1.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        SizedBox(
                          width: 150.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Altura:",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(78, 78, 78, 0.8)),
                              ),
                              Container(
                                width: 70.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(78, 78, 78, 0.2),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: TextField(
                                  onChanged: (value) => vm.insertHeigh(value),
                                  maxLines: 1,
                                  keyboardType: TextInputType.number,
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    color: Color.fromRGBO(78, 78, 78, 1.0),
                                  ),
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    hintText: "0.0",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        color: Color.fromRGBO(78, 78, 78, 1.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                vm.cancel();
                              },
                              child: const Text("Cancelar"),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text("Cálcular"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),),




              ],
            ),
          ),
        ),
      );
    });
  }
}
