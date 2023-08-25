import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../view/theme_view.dart';

class ThemeController extends State<ThemeView> {
  static late ThemeController instance;
  late ThemeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
