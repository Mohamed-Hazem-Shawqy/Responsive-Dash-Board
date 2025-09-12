import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/widgets/desktop_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const DesktopLayout());
  }
}
