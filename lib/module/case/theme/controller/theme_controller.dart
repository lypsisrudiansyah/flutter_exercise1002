import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../view/theme_view.dart';

class ThemeController extends State<ThemeView> {
  static late ThemeController instance;
  late ThemeView view;
  bool isDarkMode = true;
  ThemeData darkTheme = ThemeData.dark();
  ThemeData lightTheme = ThemeData.light();
  ThemeData theTheme = ThemeData.dark();

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);


  void enableLightTheme() {
    isDarkMode = false;
    theTheme = lightTheme;
    setState(() {});
  }

  void enableDarkTheme() {
    theTheme = darkTheme;
    isDarkMode = true;
    setState(() {});
  }

}
