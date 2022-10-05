import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:synce/src/common_widgets/sy_app_bar.dart';
import 'package:synce/src/features/device/presentation/add_device/add_device_page.dart';
import 'package:synce/src/features/share/presentation/share_without_pair_page.dart';
import 'package:synce/src/utils/extensions/context/navigator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SyAppBar(
        title: "Synce",
        elevation: 2,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Start syncing by adding a device",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "OR",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  context.push(const ShareWithoutPairPage());
                },
                style: ElevatedButton.styleFrom(
                  textStyle: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                child: const Text("Share files without syncing"),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(const AddDevicePage());
        },
        tooltip: 'Add Device',
        child: const Icon(Icons.add),
      ),
    );
  }
}
