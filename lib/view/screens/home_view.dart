import 'package:flutter/material.dart';
import 'package:flutter_test_task/core/utils/color_utils.dart';
import 'package:flutter_test_task/model/color_model.dart';
import 'package:flutter_test_task/view/widgets/color_history_item.dart';
import 'package:flutter_test_task/viewmodel/home_viewmodel.dart';
import 'package:provider/provider.dart';

/// MVVM View with main ui
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeViewModel = Provider.of<HomeViewModel>(context);
    final Color textColor = isDark(homeViewModel.currentColor)
        ? Colors.white
        : Colors.black;

    return Scaffold(
      appBar: AppBar(
        title: Text('Random Colors', style: TextStyle(color: textColor)),
        backgroundColor: homeViewModel.currentColor,
        actions: [
          IconButton(
            onPressed: homeViewModel.reset,
            icon: Icon(Icons.replay, color: textColor),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: homeViewModel.generateColor,
        child: AnimatedContainer(
          duration: const Duration(microseconds: 500),
          color: homeViewModel.currentColor,
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    'Hello there',
                    style: TextStyle(fontSize: 32, color: textColor),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Tap: ${homeViewModel.tapCount}',
                          style: TextStyle(fontSize: 18, color: textColor),
                        ),
                        const SizedBox(width: 12,),
                        Text(
                          'Color: ${ColorModel(homeViewModel.currentColor)
                              .hexCode}',
                          style: TextStyle(fontSize: 18, color: textColor),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        homeViewModel.history.map((item) =>
                            ColorHistoryItem(colorModel: item)).toList(),

                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
