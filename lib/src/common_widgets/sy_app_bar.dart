import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:synce/src/utils/extensions/context/navigator.dart';

class SyAppBar extends StatelessWidget with PreferredSizeWidget {
  const SyAppBar({
    super.key,
    required this.title,
    this.bottom,
    this.bottomHeight = 4,
    this.elevation,
  });

  final String title;
  final Widget? bottom;
  final double bottomHeight;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Navigator.of(context).canPop()
          ? IconButton(
              onPressed: context.pop,
              icon: const Icon(Icons.arrow_back_ios, size: 18),
            )
          : null,
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 21,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.8,
        ),
      ),
      centerTitle: true,
      elevation: elevation,
      bottom: bottom != null
          ? PreferredSize(
              preferredSize: Size.fromHeight(bottomHeight),
              child: bottom!,
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
