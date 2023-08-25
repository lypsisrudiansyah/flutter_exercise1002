import 'package:state_management_exercises/core.dart';

class DashboardService {
  List items = [
    {
      "label": "Counter",
      "view": const CounterView(),
    },
    {
      "label": "SingleSelection",
      "view": const SingleSelectionView(),
    },
    {
      "label": "MultipleSelection",
      "view": const MultipleSelectionView(),
    },
    {
      "label": "Loading",
      "view": const LoadingView(),
    },
    {
      "label": "DisabledButton",
      "view": const DisabledButtonView(),
    },
    {
      "label": "Visibility",
      "view": const VisibilityView(),
    },
    {
      "label": "Timer",
      "view": const TimerView(),
    },
    {
      "label": "Animate",
      "view": const AnimateView(),
    },
    {
      "label": "Theme",
      "view": const ThemeView(),
    },
    {
      "label": "HttpRequest",
      "view": const HttpRequestView(),
    },
    {
      "label": "Game",
      "view": const GameView(),
    },
  ];
}
