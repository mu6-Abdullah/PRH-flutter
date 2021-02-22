import 'package:flutter/material.dart';
import 'package:flutter_one/constants/page_classes.dart';
import 'package:flutter_one/constants/theme_data.dart';



class PsychologistsPage extends StatefulWidget {
  @override
  _PsychologistsState createState() => _PsychologistsState();
}

class _PsychologistsState extends State<PsychologistsPage> {
  List<Profile> psychologistProfiles = [
    Profile(name: 'Bharat Sharma', specialization: 'Registered Psychotherapist', address: '2923 66 St NW', phone: '780 666-7351' , email: 'null', description: 'Addiction,  Anger Management and behavioural Issues', picture: 'assets/grey_circle.png'),
    Profile(name: 'Harpreet Kaur Gill', specialization: 'Registered Psychologist/ PhD', address: '8215-112 Street Suite 506', phone: '587 401-3154', email: 'null', description: 'Depression, anxiety, relationship issues', picture:'assets/grey_circle.png' ),
    Profile(name: 'Jasbir Grewal', specialization: 'Registered Prov. Psychologist' , address: '2307 90b St SW', phone: '587 852-5456', email:'null' , description: 'Anxiety, Depression, Trauma and PTSD', picture:'assets/grey_circle.png' ),
    Profile(name: 'Rupinder Bains', specialization: 'Psychologist', address: 'null' , phone: '587 906-1467', email: 'null', description: 'Self Esteem, anxiety, Stress', picture: 'assets/grey_circle.png'),
    Profile(name: 'Ajay Pandhi', specialization: 'Psychologist' , address: '75St 105 Ave NW' , phone: '866 301-4736', email: 'null', description: 'Trauma and PTSD, codependency, Relationship Issues' , picture: 'assets/grey_circle.png'),
    Profile(name: 'REACH Services', specialization: 'Psychological Services', address: ' 12547 129 St NW', phone: '587 400-2328', email:'null' , description: 'Offers psychological services', picture: 'assets/grey_circle.png'),
  ];
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                height: 10,
              ),
            ),
            SliverAppBar(
              centerTitle: true,
              title: Text(
                'Psychologists',
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
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index){
                  return Container(
                    // padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Card(
                      color: CustomColors.cardBlue,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                                // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                child: Image(
                                  image: AssetImage(psychologistProfiles[index].picture),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      psychologistProfiles[index].name,
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 22,
                                          letterSpacing: 1.5,
                                          color: CustomColors.cardTextBlue,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      psychologistProfiles[index].specialization,
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          letterSpacing: 1,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      psychologistProfiles[index].address,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          letterSpacing: 1,
                                          color: CustomColors.textCharcoalGrey,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ]
                              )
                            ],
                          ),
                          Theme(
                            data:theme,
                            child: ExpansionTile(
                              title: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(width: 90),
                                    Icon(
                                      Icons.location_on_rounded,
                                      color: CustomColors.cardTextBlue,
                                    ),
                                    SizedBox(width: 30),
                                    Icon(Icons.email,
                                      color: CustomColors.cardTextBlue,),
                                    SizedBox(width: 30),
                                    Icon(Icons.local_phone_rounded,
                                      color: CustomColors.cardTextBlue,),
                                    SizedBox(width: 30),
                                  ]
                              ),
                              children: <Widget>[
                                Text('More information here')
                              ],
                            ),
                          ),
                          // IconButton(
                          //     color: CustomColors.textCharcoalGrey,
                          //     icon: Icon(Icons.arrow_drop_down),
                          //     onPressed: (){}
                          // ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: psychologistProfiles.length,
                semanticIndexOffset: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
