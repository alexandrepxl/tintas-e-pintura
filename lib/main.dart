import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tintasepintura/app/ui/home/home_binding.dart';
import 'package:tintasepintura/routes/app_pages.dart';
import 'package:tintasepintura/routes/app_routes.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});
  @override
  State<Main> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Main> {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.home,
      initialBinding: HomeBinding(),
      getPages: AppPages.pages,
    );
  }
}
