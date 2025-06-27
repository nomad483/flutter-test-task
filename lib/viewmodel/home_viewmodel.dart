import 'package:flutter/material.dart';
import 'package:flutter_test_task/core/utils/color_generator.dart';
import 'package:flutter_test_task/model/color_model.dart';


/// State management
class HomeViewModel extends ChangeNotifier {
  static const _maxHistoryCount = 3;

  Color _currentColor = Colors.white;
  int _tapCount = 0;
  final List<ColorModel> _history = [];

  /// Current color
  Color get currentColor => _currentColor;

  /// Tap count
  int get tapCount => _tapCount;

  // ignore: avoid_final_with_getter
  /// List of colors
  List<ColorModel> get history => _history;

  /// Change state after tap
  void generateColor() {
    _currentColor = generateRandomColor();
    _tapCount++;
    _history.insert(0, ColorModel(_currentColor));

    if (_history.length > _maxHistoryCount) {
      _history.removeLast();
    }

    notifyListeners();
  }

  /// Reset state to default
  void reset() {
    _currentColor = Colors.white;
    _tapCount = 0;
    _history.clear();

    notifyListeners();
  }
}
