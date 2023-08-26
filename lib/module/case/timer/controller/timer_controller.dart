import 'dart:async';

import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../view/timer_view.dart';

class TimerController extends State<TimerView> {
  static late TimerController instance;
  late TimerView view;
  DateTime date = DateTime.now();
  Timer? timer;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  // func startTimer
  void startTimer() {
    // date = true;
    print("asdasdasd");
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        // date = date.add(const Duration(seconds: 1));
        date = DateTime.now();
        print(date);
      });
    });
  }

  void stopTimer() {
    timer?.cancel();
    setState(() {});
  }
}
