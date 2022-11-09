import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// class Argument(
// final double bmi;
// Argument(this.bmi);
// )

class SecondPage extends StatefulWidget {
  SecondPage({required this.bmi});
  double bmi;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String content="";
  @override
  Widget build(BuildContext context) {
    if (widget.bmi < 18.5){
      content="You are in the Underweight";
    }
    else
      if(widget.bmi > 25 ){content="You are in the Overweight range.";}

    else{
    content= "You are Healthy !!";
    }


    //final args = ModalRoute.of(context)!.settings.arguments as Arguments;
    return Scaffold(
      appBar: AppBar(
        title:Text("Result"),
      ),
      body:
        /////////
      Center(
      child:
      Container(
          height: 300,
          width: 700,
          color: Colors.greenAccent,
          child:
        Center(child:Column(

        children:[
          FloatingActionButton(
              child: Center(child: Icon(Icons.accessibility_rounded)),
              backgroundColor: Colors.deepPurpleAccent,
              foregroundColor: Colors.white,

              onPressed: (){
                Navigator.pop(context);
                setState(() {

                });

               // bmi=(inc*10000)/(_currentValue*_currentValue);
              }
          ),
         Text("Your BMI is ${widget.bmi.round()}",style: TextStyle(fontSize: 50,color:Colors.black),)
,         Text("${content}",style: TextStyle(fontSize: 35,color:Colors.black),),
    /////////


     ///////////////////

          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          )
        ]
      )
        )
      )
      )

    );
  }

}

// //////////
// class ScreenArguments {
//   final String title;
//   final String message;
//
//   ScreenArguments(this.title, this.message);
// }
// before returning Scaffold.
// final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
// register widget in routes.

