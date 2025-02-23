import 'package:flutter/material.dart';
import 'package:thai_hotline_app/components/contact_card.dart';
import 'package:thai_hotline_app/data/bank.dart';

class SubCHomeUI extends StatefulWidget {
  const SubCHomeUI({super.key});

  @override
  State<SubCHomeUI> createState() => _SubCHomeUIState();
}

class _SubCHomeUIState extends State<SubCHomeUI> {
  @override
  Widget build(BuildContext context) {
    var hotLineWidgets = bankList.map((item) => Column(
          children: [
            ContactCard(
              image: item.imagePath,
              title: item.title,
              tel: item.tel,
            ),
            SizedBox(height: 10)
          ],
        ));
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 25),
                Text(
                  'สายด่วน\nธนาคาร',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    'assets/images/bank.jpg',
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                ...hotLineWidgets
              ],
            ),
          ),
        ),
      ),
    );
  }
}
