import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SecondPage extends StatefulWidget {
  SecondPage({required this.bmi});
  double bmi;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:Text("Result"),
      ),
      body:
        /////////
        Center(child:Column(
        children:[
          // Center(child: Text("Recalculated BMI :",style: TextStyle(fontSize: 40,color:Colors.white),)),
         //  Text("Your BMI is ${widget.bmi.round()}",style: TextStyle(fontSize: 50,color:Colors.black),),
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
,
  //   /////////
  //   Column(
  //   children: [
  //   if(${widget.bmi} <18.5 )...[
  //   Text("You are underweight."),
  //   ]else if($(widget.bmi} > 25 )[Text("Overweight range."),]
  // else...[
  // Text("You are healthy.")
  // ]
  // ])
  //    ///////////////////

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


    );
  }
}


