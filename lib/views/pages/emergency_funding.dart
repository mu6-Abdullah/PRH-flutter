import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:PRH/constants/theme_data.dart';
import 'package:PRH/constants/page_classes.dart';
class EmergencyFundingPage extends StatefulWidget {
  @override
  _EmergencyFundingPageState createState() => _EmergencyFundingPageState();
}

class _EmergencyFundingPageState extends State<EmergencyFundingPage> {
  @override
  Widget build(BuildContext context) {
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
                'Emergency Shelters',
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
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Card(
                    color: CustomColors.cardOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "What is Emergency Funding?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 22,
                                color: CustomColors.cardTextOrange,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height:15 ,),
                          Text(
                            'Feeling like your home is unsafe can be a challenging emotion. It may be clear to some, and may not be to others. Any feeling of endangerment of one’s life from someone inside the home is reason to seek shelter elsewhere. Below we have listed some places of temporary refuge.',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Card(
                    color: CustomColors.infoCardPinkBeige,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "When Do I Need Emergency Funding?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 22,
                                color: CustomColors.cardTextOrange,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height:15 ,),
                          Text(
                            'Emergency Funding can be requested for individuals in challenging financial situations. If you are struggling to pay rent, feed yourself or your family you can apply for emergency funding.',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Card(
                    color: CustomColors.cardRed,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "What Does Emergency Funding Cover?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 22,
                                color: CustomColors.cardTextRed,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height:15 ,),
                          Text(
                            'Emergency Funding covers necesssary needs such as food, clothing, rent, phone bill.\nIt also covers: \n- emergency transportation to a safe place \n- costs to stay in a hotel or motel for a short time if no shelters are available \n- allowance ot buy personal items not provided by the shelter, such as\n   - prescription drugs\n   - child care\n   - dental and eye care services\n   - costs for telephone calls and transportation access\n   - counselling or legal advice\n   - extended health coverage for adults and children from families with limited incomes',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Card(
                    color: CustomColors.cardBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "How Do I Apply For Emergency Funding?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 22,
                                color: CustomColors.cardTextBlue,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height:15 ,),
                          Text(
                            'Emergency Funding can be applied through contacting the Alberta Supports resource below, they can be reached in Person at their address, online through their website, or over the phone',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Center(
                    child: Text(
                      'Resources',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Center(
                    child: Text(
                      'English - Speaking',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  )
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Card(

                  color: CustomColors.cardGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                    // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Alberta Supports",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 22,
                              letterSpacing: 1.5,
                              color: CustomColors.cardTextGreen,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Helps albertans access social programs that assist with homelessness, job seeking, financial assistance , abuse, family violence",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              letterSpacing: 1,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height:10),
                        Container(
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("     Phone Line",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing: 1,
                                      color: CustomColors.textCharcoalGrey,
                                      fontWeight: FontWeight.w500
                                  ),),
                                RawMaterialButton(
                                    constraints: BoxConstraints(
                                        minWidth: 50
                                    ) ,
                                    child: Icon(
                                      Icons.local_phone_rounded,
                                      color: Colors.white,
                                    ),
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(6.0),
                                    fillColor: CustomColors.cardIconGreen,
                                    onPressed: () {
                                      launchURL('tel:'+'1-877-644-9992');
                                    }
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("     Website",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing: 1,
                                      color: CustomColors.textCharcoalGrey,
                                      fontWeight: FontWeight.w500
                                  ),),
                                RawMaterialButton(
                                    constraints: BoxConstraints(
                                        minWidth: 50
                                    ) ,
                                    child: Icon(
                                      Icons.radio_button_off_rounded,
                                      color: Colors.white,
                                    ),
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(6.0),
                                    fillColor: CustomColors.cardIconGreen,
                                    onPressed: () {
                                      launchURL('https://www.alberta.ca/family-violence-costs-leave.aspx');
                                    }
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
