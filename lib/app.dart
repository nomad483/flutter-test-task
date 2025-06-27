import 'package:flutter/material.dart';
import 'package:flutter_test_task/view/screens/home_view.dart';
import 'package:flutter_test_task/viewmodel/home_viewmodel.dart';
import 'package:provider/provider.dart';

/// Main App
class App extends StatelessWidget {
  /// App parent constructor
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => HomeViewModel())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Random Colors',
        home: HomeView(),
      ),
    );
  }
}
