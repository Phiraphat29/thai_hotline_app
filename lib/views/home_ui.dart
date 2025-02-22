import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:thai_hotline_app/views/about_ui.dart';
import 'package:thai_hotline_app/views/sub_a_home_ui.dart';
import 'package:thai_hotline_app/views/sub_b_home_ui.dart';
import 'package:thai_hotline_app/views/sub_c_home_ui.dart';
import 'package:thai_hotline_app/views/sub_d_home_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int _selectedIndex = 0;

  List<Color> colorSet = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.purple,
  ];

  List subHome = [
    SubAHomeUI(),
    SubBHomeUI(),
    SubCHomeUI(),
    SubDHomeUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: colorSet[_selectedIndex],
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutUI(),
                ),
              );
            },
          ),
        ],
        title: Text(
          'สายด่วน Thailand',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        onTap: (value) {
          setState(
            () {
              _selectedIndex = value;
            },
          );
        },
        currentIndex: _selectedIndex,
        items: [
          SalomonBottomBarItem(
              icon: Icon(Icons.wallet_travel_outlined),
              title: Text(
                'การเดินทาง',
                style: TextStyle(
                    fontFamily: GoogleFonts.notoSansThai().fontFamily),
              ),
              selectedColor: colorSet[_selectedIndex]),
          SalomonBottomBarItem(
              icon: Icon(Icons.fire_extinguisher_outlined),
              title: Text(
                'อุบัติเหตุ-เหตุฉุกเฉิน',
                style: TextStyle(
                    fontFamily: GoogleFonts.notoSansThai().fontFamily),
              ),
              selectedColor: colorSet[_selectedIndex]),
          SalomonBottomBarItem(
              icon: Icon(Icons.money_outlined),
              title: Text(
                'ธนาคาร',
                style: TextStyle(
                    fontFamily: GoogleFonts.notoSansThai().fontFamily),
              ),
              selectedColor: colorSet[_selectedIndex]),
          SalomonBottomBarItem(
              icon: Icon(Icons.electric_bolt_outlined),
              title: Text(
                'สาธารณูปโภค',
                style: TextStyle(
                    fontFamily: GoogleFonts.notoSansThai().fontFamily),
              ),
              selectedColor: colorSet[_selectedIndex]),
        ],
      ),
      body: subHome[_selectedIndex],
    );
  }
}
