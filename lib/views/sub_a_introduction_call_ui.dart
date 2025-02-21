import 'package:flutter/material.dart';

class SubAIntroductionCallUI extends StatefulWidget {
  const SubAIntroductionCallUI({super.key});

  @override
  State<SubAIntroductionCallUI> createState() => _SubAIntroductionCallUIState();
}

class _SubAIntroductionCallUIState extends State<SubAIntroductionCallUI> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Image.asset('assets/images/travel.jpg'),
          SizedBox(height: 80),
          Text(
            "เมื่อต้องเดินทางทั้งในเมือง ออกต่างจังหวัด\nจะใกล้หรือไกลเพียงใด\nสอบถามข้อมูลการเดินทาง การจราจร\nทางด่วน ทางหลัก ทางรอง\nเส้นทางเลี่ยงการจราจรติดขัด\nข้อมูลรถทัวร์ รถไฟ ขสมก. BTS MRT\nชักช้าอยู่ใย",
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
            'สายด่วน\nการเดินทาง',
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
