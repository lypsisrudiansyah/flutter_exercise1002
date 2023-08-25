import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../view/single_selection_view.dart';

class SingleSelectionController extends State<SingleSelectionView> {
  static late SingleSelectionController instance;
  late SingleSelectionView view;
  int? selectedIndex;
  List<String> categories = [
    "Apple",
    "Banana",
    "Cherry",
    "Durian",
    "Elderberry",
    "Fig",
    "Grape",
    "Honeydew",
  ];


  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  updateSelectedIndex(int index) {
    selectedIndex = index;
    setState(() {});
  }
}
