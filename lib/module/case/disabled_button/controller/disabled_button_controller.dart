import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../view/disabled_button_view.dart';

class DisabledButtonController extends State<DisabledButtonView> {
  static late DisabledButtonController instance;
  late DisabledButtonView view;
  bool enabled = false;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  void enableButton() {
    enabled = true;
    setState(() {});
  }

  void disableButton() {
    enabled = false;
    setState(() {});
  }
  
}
