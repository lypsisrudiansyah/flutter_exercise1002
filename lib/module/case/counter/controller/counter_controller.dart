import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../view/counter_view.dart';

class CounterController extends State<CounterView> {
  static late CounterController instance;
  late CounterView view;

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
