import 'package:flutter/material.dart';
import 'package:flutter_one/constants/theme_data.dart';
class DomesticViolenceSupportsPage extends StatefulWidget {
  @override
  _DomesticViolenceSupportsPageState createState() => _DomesticViolenceSupportsPageState();
}

class _DomesticViolenceSupportsPageState extends State<DomesticViolenceSupportsPage> {
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
                  'Domestic Violence Supports'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
