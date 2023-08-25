import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../view/loading_view.dart';

class LoadingController extends State<LoadingView> {
  static late LoadingController instance;
  late LoadingView view;

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
