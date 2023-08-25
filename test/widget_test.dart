// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'dart:io';
import 'package:state_management_exercises/user.dart';

void main() async {
  if (fullName.isEmpty || email.isEmpty || whatsapp.isEmpty) {
    print("----------------");
    print("Wajib mengisi data!");
    print("Buka lib/user.dart");
    print("----------------");
    return;
  }
  int point = 0;

  var tasks = [
    {
      "module": "counter",
      "requirements": [
        "int counter",
        "increment()",
        "decrement()",
        "setState",
      ],
    },
    {
      "module": "single_selection",
      "requirements": [
        "setState",
        "updateSelectedIndex",
      ],
    },
    {
      "module": "multiple_selection",
      "requirements": [
        "setState",
        "List selectedIndexes = [];",
        "updateSelectedIndex",
      ],
    },
    {
      "module": "loading",
      "requirements": [
        "setState",
        "bool loading = false;",
        "setState",
        "showLoading",
        "hideLoading",
      ],
    },
    {
      "module": "disabled_button",
      "requirements": [
        "setState",
        "bool enabled = false;",
        "enableButton",
        "disableButton",
      ],
    },
    {
      "module": "visibility",
      "requirements": [
        "setState",
        "bool visible = false;",
        "showBanner",
        "hideBanner",
      ],
    },
    {
      "module": "timer",
      "requirements": [
        "setState",
        "DateTime date = DateTime.now();",
        "Timer? timer;",
        "startTimer",
        "stopTimer",
        "timer?.cancel();",
      ],
    },
    {
      "module": "animate",
      "requirements": [
        "setState",
        "bool animated = false;",
        "doAnimation",
        "resetAnimation",
      ],
    },
    {
      "module": "theme",
      "requirements": [
        "setState",
        "ThemeData darkTheme = ThemeData.dark();",
        "ThemeData lightTheme = ThemeData.light();",
        "bool isDarkMode = true;",
        "enableDarkTheme",
        "enableLightTheme",
      ],
    },
    {
      "module": "http_request",
      "requirements": [
        "setState",
        "List users = [];",
        "getUsers",
        "reset",
      ],
    },
    {
      "module": "game",
      "requirements": [
        "setState",
        "int turns = 1;",
        "List values",
        "updateBoard",
        "resetBoard",
        "values[newIndex] = \"X\"",
        "values[newIndex] = \"O\"",
        "turns++",
        "if(turns == 9) return;",
      ],
    },
    //---
  ];

  for (var task in tasks) {
    var module = task["module"];
    var path =
        "lib\\module\\case\\$module\\controller\\${module}_controller.dart".fix;
    String content = File(path.toString().fix).readAsStringSync();
    List requirements = task["requirements"] as List;

    for (var req in requirements) {
      if (content.contains(req)) {
        point++;
      }
    }
  }

  print("POINT: $point");

  await Dio().post(
    "https://capekngoding.com/magicbook/api/scores",
    options: Options(
      headers: {
        "Content-Type": "application/json",
      },
    ),
    data: {
      "name": fullName,
      "email": email,
      "whatsapp": whatsapp,
      "point": point,
      "chapter": "Chapter 1002",
    },
  );

  print("Your point is submitted! Thanks");
}

extension StringExtension on String {
  String get fix {
    String mode = Directory.current.path;
    String separator = "/";
    if (mode.contains("\\")) {
      separator = "\\";
    }

    var path = this;
    path = path.replaceAll('//', "(slash)");
    path = path.replaceAll('\\', "(slash)");
    path = path.replaceAll("/", "(slash)");
    path = path.replaceAll("(slash)(slash)", "(slash)");
    path = path.replaceAll("(slash)", separator);
    return path;
  }
}
