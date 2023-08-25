import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../view/animate_view.dart';

class AnimateController extends State<AnimateView> {
  static late AnimateController instance;
  late AnimateView view;

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
