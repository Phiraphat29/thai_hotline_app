import 'package:flutter/material.dart';

class SubDIntroductionCallUI extends StatefulWidget {
  const SubDIntroductionCallUI({super.key});

  @override
  State<SubDIntroductionCallUI> createState() => _SubDIntroductionCallUIState();
}

class _SubDIntroductionCallUIState extends State<SubDIntroductionCallUI> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Image.asset('assets/images/utility.jpg'),
          SizedBox(height: 50),
          Text(
            'น้ำไม่ไหล\nไฟฟ้าดับ\nโทรไม่ติด\nอินเตอร์เน็ตมีปัญหา\nเข้า Social Media ไม่ได้\nรอไม่ได้ โทรเลย !!!',
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
            'สายด่วน\nสาธารณูปโภค',
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
