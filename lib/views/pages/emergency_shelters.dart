import 'package:flutter/material.dart';
import 'package:flutter_one/constants/theme_data.dart';
class EmergencySheltersPage extends StatefulWidget {
  @override
  _EmergencySheltersPageState createState() => _EmergencySheltersPageState();
}

class _EmergencySheltersPageState extends State<EmergencySheltersPage> {
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
                  'Emergency Shelters'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
