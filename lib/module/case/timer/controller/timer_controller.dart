import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../view/timer_view.dart';

class TimerController extends State<TimerView> {
  static late TimerController instance;
  late TimerView view;

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
