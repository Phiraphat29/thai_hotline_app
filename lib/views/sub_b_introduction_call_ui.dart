import 'package:flutter/material.dart';

class SubBIntroductionCallUI extends StatefulWidget {
  const SubBIntroductionCallUI({super.key});

  @override
  State<SubBIntroductionCallUI> createState() => _SubBIntroductionCallUIState();
}

class _SubBIntroductionCallUIState extends State<SubBIntroductionCallUI> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            width: 180,
            child: Image.asset('assets/images/accident.jpg'),
          ),
          SizedBox(height: 50),
          Text(
            "อุบัติเหตุ ป่วยฉุกเฉิน  ไฟใหม้\nรถหาย สัตว์ร้านเข้าบ้าน\nทุกอย่างเกินขึ้นได้ตลอดเวลา\nจะดีกว่าไหม\nเมื่อพบเจออุบัติเหตุ เหตุด่วน เหตุร้าน\nสามารถโทรแจ้งได้ทันท่วงที\nไม่ต้องรอ โทรเลย !!!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          Text(
            'โทรเลย!!',
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 50),
          Text(
            'สายด่วน\nอุบัติเหตุ-เหตุฉุกเฉิน',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
