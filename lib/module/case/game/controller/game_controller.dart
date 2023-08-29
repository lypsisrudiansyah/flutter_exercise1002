import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../view/game_view.dart';

class GameController extends State<GameView> {
  static late GameController instance;
  late GameView view;
  int turns = 1;
  List values = ["", "", "", "", "", "", "", "", ""];

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  void updateBoard(int newIndex) {
    if(turns == 9) return;
    if (newIndex % 2 == 0) {
      values[newIndex] = "X";
    } else {
      values[newIndex] = "O";
    }
    turns++;
  }

  void resetBoard() {
    turns = 1;
    List values = ["", "", "", "", "", "", "", "", ""];
  }
}
