import 'package:flutter/material.dart';

import '../utils/colors.dart';

class PaidSignalsScreen extends StatefulWidget {
  const PaidSignalsScreen({Key? key}) : super(key: key);

  @override
  State<PaidSignalsScreen> createState() => _FreeSignalsScreenState();
}

class _FreeSignalsScreenState extends State<PaidSignalsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffloadColor,
    );
  }
}
