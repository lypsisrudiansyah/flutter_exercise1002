import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../view/visibility_view.dart';

class VisibilityController extends State<VisibilityView> {
  static late VisibilityController instance;
  late VisibilityView view;

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
