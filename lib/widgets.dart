import 'package:flutter/material.dart';

// TASK CARD WIDETS

class TaskCard extends StatelessWidget {
final String  title;
final String  des;
TaskCard({required this.title ,  required this.des});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding : EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 24.0
      ),
      // margeen between two cards - 
margin: EdgeInsets.only(bottom: 20.0),

      // change the bouder - 
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0)
      ),

child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    
   Text(
     // for write title - 
     title,

            style:TextStyle(
                color: Colors.black,
                fontSize:22.0,
                fontWeight: FontWeight.bold,
          ),
),


Padding(
  padding: EdgeInsets.only(
    top: 10.0
    ),

  child:   Text(
    
    des,

  style:  TextStyle(
  fontSize: 16.0,
  color: Color(0xFF86829D),
  height: 1.5,
  
  ),
   ),
),
],)
      
    );
  }
}

// todo widgets

class Todowidget extends StatelessWidget {

final String text;
bool isDone;

Todowidget({required this.text,required this.isDone});


  @override
  Widget build(BuildContext context) {
    return Container(
padding: EdgeInsets.symmetric(
  horizontal: 24.0,
  vertical: 8.0,

),

      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            margin: EdgeInsets.only(
              right: 12.0,
            ),
            decoration: BoxDecoration(
              color: isDone ? Color(0xFF7349FE) : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
              border: isDone ? null : Border.all(
                color: Colors.grey,
                width: 1.5,

              )
            ),
            
            child: Image(image: AssetImage('assets/images/check_icon.png'),
          ),
          ),
          
          Text(
            
            text,
             style: TextStyle(
              color: isDone ? Colors.black : Colors.grey,
              fontSize: 16.0,
              fontWeight: isDone ? FontWeight.bold : FontWeight.normal,
            ),



          )
        ],
      ),
      
    );
  }
}