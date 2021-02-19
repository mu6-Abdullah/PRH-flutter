import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_one/constants/theme_data.dart';

class CounsellingServicesPage extends StatefulWidget {
  @override
  _CounsellingServicesPageState createState() => _CounsellingServicesPageState();
}

class _CounsellingServicesPageState extends State<CounsellingServicesPage> {
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
                  'Counselling Services'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
