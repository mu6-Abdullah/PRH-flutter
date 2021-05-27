import 'package:flutter/material.dart';
import 'package:PRH/constants/theme_data.dart';
class TranslatePage extends StatefulWidget {
  @override
  _TranslatePageState createState() => _TranslatePageState();
}

class _TranslatePageState extends State<TranslatePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                height: 10,
              ),
            ),
            SliverAppBar(
              centerTitle: true,
              title: Text(
                'Translate Template Page',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: (){},
                )
              ],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)
              ),
              backgroundColor: CustomColors.mainOrange,
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 50),
            ),
            SliverToBoxAdapter(
              child: Text(
                'Translate',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 24,
                    letterSpacing: 1.2,
                    color: CustomColors.textCharcoalGrey,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: CustomColors.cardBlue
                ),
                  child: Center(
                      child: LanguageOption())),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 200,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    color: CustomColors.cardBlue,
                    borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                      'Start typing here..',
                    style: TextStyle(
                      color: Colors.black12,
                        fontFamily: 'Montserrat',
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.2,

                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 200,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  color: CustomColors.cardBlue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Your translation will appear here',
                    style: TextStyle(
                      color: Colors.black12,
                      fontFamily: 'Montserrat',
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.2,

                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LanguageOption extends StatefulWidget {
  LanguageOption({Key key}) : super(key:key);
  @override
  _LanguageOptionState createState() => _LanguageOptionState();
}

class _LanguageOptionState extends State<LanguageOption> {
  String dropdownValue = 'English to Punjabi';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        elevation: 16,
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 24,
            letterSpacing: 1.2,
            color: CustomColors.textCharcoalGrey,
            fontWeight: FontWeight.w500
        ),
        onChanged: (String newValue){
          setState(() {
            dropdownValue = newValue;
          });
        },
      items: <String>['Punjabi to English', 'English to Punjabi']

          .map<DropdownMenuItem<String>>((String value){
        return DropdownMenuItem(
            value: value,
            child: Text(value),
          );
        }).toList()
        );
  }
}

