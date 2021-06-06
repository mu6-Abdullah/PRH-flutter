import 'package:flutter/material.dart';
import 'package:PRH/constants/theme_data.dart';

class HomePage2 extends StatefulWidget {
  HomePage2({Key key}): super(key:key);
  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // Add the app bar to the CustomScrollView.
          SliverAppBar(
            backgroundColor: CustomColors.mainOrange,
            // Provide a standard title.
            title: Text('Punjabi Resources Handbook'),
            // Allows the user to reveal the app bar if they begin scrolling
            // back up the list of items.
            floating: true,
            // Display a placeholder widget to visualize the shrinking size.
            flexibleSpace: Placeholder(),
            // Make the initial height of the SliverAppBar larger than normal.
            expandedHeight: 200,
          ),
        ],
      ),
    );
  }
}
