import 'package:flutter/material.dart';

import '../utils/colors.dart';

class FreeSignalsScreen extends StatefulWidget {
  const FreeSignalsScreen({Key? key}) : super(key: key);

  @override
  State<FreeSignalsScreen> createState() => _FreeSignalsScreenState();
}

class _FreeSignalsScreenState extends State<FreeSignalsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffloadColor,
    );
  }
}
