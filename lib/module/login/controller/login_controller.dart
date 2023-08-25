import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doLogin() async {
    if (DB.name.isEmpty) return;
    if (DB.whatsapp.isEmpty) return;
    if (DB.email.isEmpty) return;
    Get.offAll(const DashboardView());
  }
}
