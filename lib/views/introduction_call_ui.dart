import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:thai_hotline_app/views/home_ui.dart';
import 'package:thai_hotline_app/views/sub_a_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/sub_b_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/sub_c_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/sub_d_introduction_call_ui.dart';

class IntroductionCallUI extends StatefulWidget {
  const IntroductionCallUI({super.key});

  @override
  State<IntroductionCallUI> createState() => _IntroductionCallUIState();
}

class _IntroductionCallUIState extends State<IntroductionCallUI> {
  int _selectedIndex = 0;

  List<Color> dotColor = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: '',
              bodyWidget: SubAIntroductionCallUI(),
            ),
            PageViewModel(
              title: '',
              bodyWidget: SubBIntroductionCallUI(),
            ),
            PageViewModel(
              title: '',
              bodyWidget: SubCIntroductionCallUI(),
            ),
            PageViewModel(
              title: '',
              bodyWidget: SubDIntroductionCallUI(),
            ),
          ],
          scrollPhysics: ClampingScrollPhysics(),
          dotsDecorator: DotsDecorator(
            activeColor: dotColor[_selectedIndex],
            size: Size(10, 10),
            activeSize: Size(22, 10),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          showSkipButton: true,
          skip: Text("ข้าม"),
          showNextButton: true,
          next: Icon(
            Icons.arrow_forward_ios,
          ),
          showDoneButton: true,
          done: Text('โทรเลย'),
          onDone: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeUI(),
              ),
            );
          },
          onChange: (index) {
            // เพิ่ม onPageChange
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
