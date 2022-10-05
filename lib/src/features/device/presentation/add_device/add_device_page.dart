import 'package:flutter/material.dart';
import 'package:synce/src/common_widgets/sy_app_bar.dart';

class AddDevicePage extends StatelessWidget {
  const AddDevicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SyAppBar(
        title: "Add Device",
        bottom: LinearProgressIndicator(),
      ),
    );
  }
}
