import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:state_management_exercises/core.dart';
import '../view/http_request_view.dart';

class HttpRequestController extends State<HttpRequestView> {
  static late HttpRequestController instance;
  late HttpRequestView view;
  List users = [];
  bool isLoading = false;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  void getUsers() async {
    setState(() {
      isLoading = true;
    });
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    // Map obj = response.data;
    // waiting 3 second
    await Future.delayed(const Duration(milliseconds: 500), () {
      print("waiting 3 second");
    });
    setState(() {
      isLoading = false;
      users = response.data["data"];
    });
  }

  void reset() {
    // users = [];
    users.clear();
    setState(() {});
  }
}
