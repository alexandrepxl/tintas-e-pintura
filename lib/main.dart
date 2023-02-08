import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:tintasepintura/app/data/hive_manager/register_adapter.dart';
import 'package:tintasepintura/app/ui/home/home_binding.dart';
import 'package:tintasepintura/app/ui/initial/initial_binding.dart';
import 'package:tintasepintura/routes/app_pages.dart';
import 'package:tintasepintura/routes/app_routes.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Register.adapter();

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
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromRGBO(245,246,252,1.0),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initial,
      initialBinding: InitialBinding(),
      getPages: AppPages.pages,
    );
  }
}
