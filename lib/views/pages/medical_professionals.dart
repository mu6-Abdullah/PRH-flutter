import 'package:flutter/material.dart';
import 'package:flutter_one/constants/theme_data.dart';
class MedicalProfessionalsPage extends StatefulWidget {
  @override
  _MedicalProfessionalsPageState createState() => _MedicalProfessionalsPageState();
}

class _MedicalProfessionalsPageState extends State<MedicalProfessionalsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: CustomColors.mainOrange,
              pinned: true,
              title: Text(
                  'Medical Professionals'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
