import 'package:state_management_exercises/core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DB.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Colors.green[900]!,
      Colors.orange[900]!,
      Colors.red[900]!,
      Colors.blueAccent,
      Colors.blueGrey[900]!,
      Colors.purple,
      Colors.purpleAccent,
      Colors.amber,
      Colors.purpleAccent,
    ];
    colors.shuffle();
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey[900]!),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: colors.first,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      home: const DashboardView(),
    );
  }
}
