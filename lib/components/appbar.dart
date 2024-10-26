import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ikiapp/constants.dart';

class IkiAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const IkiAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexProvider);
    return AppBar(
      backgroundColor: darkBlue,
      elevation: 0,
      flexibleSpace: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF292929),
                ),
                child: tabs[index].leading,
            ),
            Text(tabs[index].title,
                style: GoogleFonts.tsukimiRounded(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17
                )),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFF292929),
              ),
              child: tabs[index].ending,
            )
          ],
        ),
      )),
    );
  }
}
