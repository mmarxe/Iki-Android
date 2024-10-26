import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ikiapp/constants.dart';
import 'package:ikiapp/home.dart';

class IkiNavBar extends ConsumerWidget {
  const IkiNavBar({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.1,
      padding: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Color(0xFF292929),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for(int i = 0; i < tabs.length; i++)
            _buildNavItem(tabs[i].navbarIcon, tabs[i].navbarTitle, tabs[i].index, context, ref),
        ],
      ),
    );
  }
}

Widget _buildNavItem(
    IconData icon, String label, int index, BuildContext context, WidgetRef ref) {
  return GestureDetector(
    onTap: () {
      ref.read(indexProvider.notifier).state = index;
      pageController.jumpToPage(index);
      },
    child: Stack(
      fit: StackFit.loose,
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width / 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.tsukimiRounded(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                )
              ],
            )
        ),
      ],
    ),
  );
}
