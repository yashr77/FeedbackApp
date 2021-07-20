import 'package:flutter/material.dart';
import 'main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'page7.dart';
import 'page2.dart';
import 'page4.dart';
import  'page5.dart';
import  'page6.dart';


void main() => runApp(Third());
var sliderValue2 = 0.0;
class Third extends StatelessWidget {
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

class _HomePageState extends State<HomePage> {
  var myFeedbackText = "COULD BE BETTER";

  IconData myFeedback = FontAwesomeIcons.sadTear;
  Color myFeedbackColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) => Fourth()
          ));
        },
        label: const Text('Next'),
        shape:RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
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
      body: Container(
        color: Color(0xff131313),
        child: Column(
          children: <Widget>[
            Container(child:Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(child: Text("3. On a scale of 1 to 5, how do you rate the room services of our hotel",
                style: TextStyle(color: Colors.white, fontSize: 22.0,fontWeight:FontWeight.bold),)),
            ),),
            SizedBox(height:30.0),
            Container(
              child: Align(
                child: Material(
                  color: Color(0xff343030),
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0xBF000000),
                  child: Container(
                      width: 350.0,
                      height: 400.0,
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(child: Text(myFeedbackText,
                            style: TextStyle(color: Colors.white, fontSize: 22.0),)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(child: Icon(
                            myFeedback, color: myFeedbackColor, size: 100.0,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Slider(
                              min: 0.0,
                              max: 5.0,
                              divisions: 5,
                              value: sliderValue2,
                              activeColor: Color(0xffa329de),
                              inactiveColor: Colors.blueGrey,
                              onChanged: (newValue) {
                                setState(() {
                                  sliderValue2 = newValue;
                                  if (sliderValue2 >= 0.0 && sliderValue2 <= 1.0) {
                                    myFeedback = FontAwesomeIcons.sadTear;
                                    myFeedbackColor = Colors.red;
                                    myFeedbackText = "COULD BE BETTER";
                                  }
                                  if (sliderValue2 >= 1.1 && sliderValue2 <= 2.0) {
                                    myFeedback = FontAwesomeIcons.frown;
                                    myFeedbackColor = Colors.yellow;
                                    myFeedbackText = "BELOW AVERAGE";
                                  }
                                  if (sliderValue2 >= 2.1 && sliderValue2 <= 3.0) {
                                    myFeedback = FontAwesomeIcons.meh;
                                    myFeedbackColor = Colors.amber;
                                    myFeedbackText = "NORMAL";
                                  }
                                  if (sliderValue2 >= 3.1 && sliderValue2 <= 4.0) {
                                     myFeedback = FontAwesomeIcons.smile;
                                    myFeedbackColor = Colors.green;
                                    myFeedbackText = "GOOD";
                                  }
                                  if (sliderValue2 >= 4.1 && sliderValue2 <= 5.0) {
                                     myFeedback = FontAwesomeIcons.laugh;
                                    myFeedbackColor = Color(0xff74f544);
                                    myFeedbackText = "EXCELLENT";
                                  }

                                });
                              },
                            ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(child: Text("Your Rating: $sliderValue2",
                            style: TextStyle(color: Colors.white, fontSize: 22.0,fontWeight:FontWeight.bold),)),
                        ),

                      ],)
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