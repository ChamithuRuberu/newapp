import 'package:flutter/material.dart';
void main()=>runApp(MyApp());



class MyApp extends StatelessWidget {

  var questionIndex=0;

  void aq(){
    questionIndex=questionIndex+1;
    print(questionIndex);
    }

  Widget build(BuildContext context)
  {
    var questions=[
      'what\'s your favourite color?'
      'what\'s your favourite animal?'
    ];
    return MaterialApp(home:Scaffold(
      appBar: AppBar(title:Text( 'Hello chami',)
      ),
      body:Column(
        children: [
          Text(
            questions[questionIndex],
          ),         // Text(questions[])
          RaisedButton(child:Text('ansewer 1'),onPressed: aq,),
          RaisedButton(child:Text('ansewer 2'),onPressed: () => print('answer 2 chosen ..'),),
          RaisedButton(child:Text('ansewer 3'),onPressed:(){
            print('answer 3 chosen..');
          },),
      ]
      )
    ));
  }
}
