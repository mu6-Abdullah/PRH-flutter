import 'package:flutter/material.dart';
import 'package:flutter_one/constants/theme_data.dart';
var psychList = [1,2,3,4,5,6,7,8,9];
class PsychologistsPage extends StatefulWidget {
  @override
  _PsychologistsState createState() => _PsychologistsState();
}

class _PsychologistsState extends State<PsychologistsPage> {
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
                'Psychologists'
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index){
                    return Center(child: Text('...'));
                  },
                childCount: 2,
                semanticIndexOffset: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
