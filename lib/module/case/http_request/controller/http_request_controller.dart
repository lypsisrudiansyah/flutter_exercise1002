import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../view/http_request_view.dart';

class HttpRequestController extends State<HttpRequestView> {
  static late HttpRequestController instance;
  late HttpRequestView view;

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
