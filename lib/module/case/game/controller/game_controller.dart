import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../view/game_view.dart';

class GameController extends State<GameView> {
  static late GameController instance;
  late GameView view;

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
