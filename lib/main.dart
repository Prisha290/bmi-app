import 'package:flutter/material.dart';
import 'package:bmi_hw/second_page.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Homepage()
      // initialRoute: '/',
      // routes:{
      //   '/':(context)=>Homepage(),
      //   '/second':(context)=>SecondPage(),
      // },

    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);


  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double _currentValue=30;
  double inc=50;
  double bmi=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child:Text("BMI Calculator",style:TextStyle(fontSize: 36))),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          Center(
            child: Container(
              height: 200,
              width: 400,
              color: Colors.lightGreenAccent,
              child: Column(
                  children:[

                    Center(child: Text("Height (in cm) :",style: TextStyle(fontSize: 40,color:Colors.blueAccent),)),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(_currentValue.round().toString(),style: TextStyle(fontSize: 40,color:Colors.blueAccent),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Slider(
                        value: _currentValue,
                        min: 0,
                        max: 120,
                        divisions: 250,
                        label: _currentValue.toString(),
                        onChanged: (value){
                          setState((){
                            _currentValue = value;
                          });
                        },
                      ),
                    )

                  ]//children
              ),



            ),
          ),

          Center(
            child: Container(
              height: 200,
              width: 500,
              color: Colors.orangeAccent,

              child: Column(
                children: [
                  Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Weight (in kg) :",style: TextStyle(fontSize: 45),),
                  )),

                  Column(
                    children:[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(inc.toString(),style: TextStyle(fontSize: 40),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Column(
                            children: [
                              FloatingActionButton(
                                  child:
                                  Center(child: Icon(Icons.add)),
                                  backgroundColor: Colors.black,
                                  foregroundColor:Colors.white,

                                  onPressed: (){
                                    setState(() {

                                    });
                                    inc++;

                                  }
                              ),
                            ],
                          ),
                          FloatingActionButton(
                              child: Center(child: Icon(Icons.remove)),
                              backgroundColor: Colors.black,
                              foregroundColor:Colors.white,
                              onPressed:(){
                                setState(() {

                                });
                                inc--;
                              }
                          ),
                        ],
                      ),
                    ],
                  ),


                ],
              ),
            ),
          ),
          Container(
            height: 200,
            width: 600,
            color: Colors.deepPurpleAccent,


            child: Column(

              children: [
                Center(child: Text("Calculated BMI :",style: TextStyle(fontSize: 40,color:Colors.white),)),
                Text(bmi.round().toString(),style: TextStyle(fontSize: 50,color:Colors.white),),
                FloatingActionButton(
                    child: Center(child: Icon(Icons.accessibility_rounded)),
                    backgroundColor: Colors.deepPurpleAccent,
                    foregroundColor: Colors.white,

                    onPressed: (){

                      setState(() {

                      });
                      bmi=(inc*10000)/(_currentValue*_currentValue);
                      Navigator.push(context,MaterialPageRoute  (builder: (context)=> SecondPage(bmi:bmi)));

                     // Navigator.pushNamed(context,'/second',arguments:Arguments(bmi));
                    }
                ),
              ],
            ),
          ),





        ],

      ),


    );
  }
}
