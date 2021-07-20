import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:r2/page6.dart';
import 'main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import  'page5.dart';
import 'page3.dart';
import 'page4.dart';

import  'page2.dart';

void main() => runApp(Seven());
class Seven extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Slider',
        theme: ThemeData(
          primaryColor: Color(0xff08f5d9),
          //primaryColor: Color(0xff512ea8),
          //primaryColor: Color(0xff662d8c),
        ),
        home:HomePage()
      //home: MoneySlider(),
      //home: StarFeedback(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  var sum=sliderValue1+sliderValue+sliderValue2+sliderValue3+sliderValue4+
      sliderValue5;
  IconData f=FontAwesomeIcons.smile;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xff131313),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) => MyApp()
          ));
        },
        label: const Text('Go to start again'),
        shape:RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
        backgroundColor: Color(0xffa329de),
      ),

      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
          //
        }),
        title: Text("Feedback"),

        actions: <Widget>[
          IconButton(icon: Icon(
              Icons.feedback_sharp), onPressed: () {
            //
          }),
        ],
      ),
      body:
      Container(
        child:Padding(
          padding:EdgeInsets.fromLTRB(40.0, 130.0, 30.0,220.0),



        child:Align(
        child: Material(
        color: Color(0xffcbc1c1),
        elevation: 14.0,
        borderRadius: BorderRadius.circular(24.0),

            child:Column(

                children: <Widget>[

                 
                  if (sum<=10)

                    Padding(

                      padding: const EdgeInsets.all(28.0),
                      child: Container(

                          child:Text(
                            '😔\n'
                        'We are sorry for your inconvenience',
                        style: TextStyle(
                          color: Color(0xffff1400),
                          letterSpacing: 1.0,
                          fontSize: 35,
                          fontFamily:'Nunito',
                          // fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,


                      ),


                        )
                         )






                   else if((sum>=11)&&(sum<=20))

                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Text(
                        '☺️\n'
                        'Hope we serve you better next time',
                        style:TextStyle(
                          color:Colors.yellow,
                          letterSpacing: 1.0,
                          fontSize: 35,
                          fontFamily:'Nunito',
                          //fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,


                      ),
                    )


                  else if((sum>=21)&&(sum<=30))

                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Text(
                          '😄\n'
                          'We hope you come back next time',
                          style:TextStyle(
                            color:Colors.green,
                            letterSpacing: 1.0,
                            fontSize: 35,
                            fontFamily:'Nunito',
                            //fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,


                        ),
                      ),
             ],


      ),),),),),);


  }}