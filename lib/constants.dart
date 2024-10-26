import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// This provider manages the logged-in state (true if logged in, false if not)
final loggedInProvider = StateProvider<bool>((ref) => false);
final indexProvider = StateProvider<int>((ref) => 0);

const Color darkBlue = Color(0xFF14121D);
const Color lightGreen = Color(0xFFC5FF20);

final BoxDecoration primaryContainerStyle = BoxDecoration(
    border: Border.all(color: darkBlue, width: 2),
    borderRadius: BorderRadius.circular(25));

final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: lightGreen,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(2),
    ),
    padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
    textStyle: GoogleFonts.tsukimiRounded(
        color: Colors.black, fontWeight: FontWeight.bold));

final TextStyle primaryTextStyle = GoogleFonts.tsukimiRounded(
    color: Colors.white, fontWeight: FontWeight.w500);

final TextStyle primaryButtonTextStyle = GoogleFonts.tsukimiRounded(
    color: Colors.black, fontWeight: FontWeight.bold);

class HomeTab {
  final int index;
  final String title;
  final Widget leading;
  final Widget ending;
  final IconData navbarIcon;
  final String navbarTitle;

  HomeTab({required this.index, required this.title, required this.leading, required this.ending, required this.navbarIcon, required this.navbarTitle});
}

List<HomeTab> tabs = [
  HomeTab(
      index: 0,
      title: "My Coach",
      leading: IconButton(
          onPressed: () {
//Navigator.pop(context);
            null;
          },
          icon: const Icon(
            size: 25,
            Icons.bookmark_border_sharp,
            color: Colors.white,
          )),
      ending: IconButton(
          onPressed: () {},
          icon: Icon(
            size: 25,
            Icons.search,
            color: Colors.white,
          )),
    navbarIcon: Icons.home,
    navbarTitle: "Coach"
  ),
  HomeTab(
      index: 1,
      title: "Explore",
      leading: IconButton(
          onPressed: () {
//Navigator.pop(context);
            null;
          },
          icon: const Icon(
            size: 25,
            Icons.bookmark_border_sharp,
            color: Colors.white,
          )),
      ending: IconButton(
          onPressed: () {},
          icon: Icon(
            size: 25,
            Icons.search,
            color: Colors.white,
          )),
      navbarIcon: Icons.search,
      navbarTitle: "Explore"
  ),
  HomeTab(
      index: 2,
      title: "Wellness Passport",
      leading: IconButton(
          onPressed: () {
//Navigator.pop(context);
            null;
          },
          icon: const Icon(
            size: 25,
            Icons.bookmark_border_sharp,
            color: Colors.white,
          )),
      ending: IconButton(
          onPressed: () {},
          icon: Icon(
            size: 25,
            Icons.search,
            color: Colors.white,
          )),
      navbarIcon: Icons.home,
      navbarTitle: "Wellness Passport"
  ),
  HomeTab(
      index: 3,
      title: "Connect",
      leading: IconButton(
          onPressed: () {
//Navigator.pop(context);
            null;
          },
          icon: const Icon(
            size: 25,
            Icons.bookmark_border_sharp,
            color: Colors.white,
          )),
      ending: IconButton(
          onPressed: () {},
          icon: Icon(
            size: 25,
            Icons.search,
            color: Colors.white,
          )),
      navbarIcon: Icons.arrow_circle_right_outlined,
      navbarTitle: "Connect"
  ),
  HomeTab(
      index: 4,
      title: "My Account",
      leading: IconButton(
          onPressed: () {
//Navigator.pop(context);
            null;
          },
          icon: const Icon(
            size: 25,
            Icons.notification_important_sharp,
            color: Colors.white,
          )),
      ending: IconButton(
          onPressed: () {},
          icon: Icon(
            size: 25,
            Icons.settings,
            color: Colors.white,
          )),
      navbarIcon: Icons.person,
      navbarTitle: "Me"
  ),
];
