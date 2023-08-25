import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../view/multiple_selection_view.dart';

class MultipleSelectionController extends State<MultipleSelectionView> {
  static late MultipleSelectionController instance;
  late MultipleSelectionView view;
  List<int> selectedIndexes = [];
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

  void updateSelectedIndex(int index) {
    if (selectedIndexes.contains(index)) {
      selectedIndexes.remove(index);
    } else {
      selectedIndexes.add(index);
    }
    setState(() {});
  }
}
