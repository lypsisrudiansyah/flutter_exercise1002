import 'package:state_management_exercises/core.dart';
import 'package:flutter/material.dart';

class DashboardService {
  List items = [
    {
      "label": "Counter",
      "view": const CounterView(),
      "icon": Icons.ads_click,
    },
    {
      "label": "SingleSelection",
      "view": const SingleSelectionView(),
      "icon": Icons.spellcheck_outlined,
    },
    {
      "label": "MultipleSelection",
      "view": const MultipleSelectionView(),
      "icon": Icons.format_list_numbered_outlined,
    },
    {
      "label": "Loading",
      "view": const LoadingView(),
      "icon": Icons.donut_large_outlined,
    },
    {
      "label": "DisabledButton",
      "view": const DisabledButtonView(),
      "icon": Icons.disabled_by_default,
    },
    {
      "label": "Visibility",
      "view": const VisibilityView(),
      "icon": Icons.visibility,
    },
    {
      "label": "Timer",
      "view": const TimerView(),
      "icon": Icons.access_time_outlined,
    },
    {
      "label": "Animate",
      "view": const AnimateView(),
      "icon": Icons.animation,
    },
    {
      "label": "Theme",
      "view": const ThemeView(),
      "icon": Icons.theater_comedy,
    },
    {
      "label": "HttpRequest",
      "view": const HttpRequestView(),
      "icon": Icons.http,
    },
    {
      "label": "Game",
      "view": const GameView(),
      "icon": Icons.gamepad,
    },
  ];
}
