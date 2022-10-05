import 'package:flutter/material.dart';
import 'package:synce/src/common_widgets/sy_app_bar.dart';

class ShareWithoutPairPage extends StatelessWidget {
  const ShareWithoutPairPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SyAppBar(
        title: "Share Files",
      ),
    );
  }
}
