import 'package:flutter/material.dart';
import 'package:todo/widgets.dart';


class Taskpage extends StatefulWidget {

  @override
  State<Taskpage> createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
    
    body: Container(
      child: Stack(
        children: [
          Column(children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 24.0,
                bottom: 6.0,

              ),

              child: Row(children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    },
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Image(image: AssetImage(
                      'assets/images/back_arrow_icon.png'
                    ),
                    ),
                    
                  ),
                ),
                Expanded(
                    child: TextField(
                      onSubmitted: (value) {
                        
                        
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter task',
                        border: InputBorder.none,
                        ),
                        
                        style:TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          ) ,

                    ),
                  ),
              ],
              ),
            ),
            Padding(
              padding:EdgeInsets.only(bottom:12.0, ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter the task Description ',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 24.0,
                  )

                  ),
              ),
            ),
            Todowidget(
              text:'Create your first Task',
              isDone: false,
            ),
            Todowidget(
               text:'Create your first Todo as well',
              isDone: true,
            ),
            Todowidget(
              text:'Create your first Task',
              isDone: true,
            ),

            
          ],
          
          
          ),
           Positioned(
                bottom: 24.0,
                right: 24.0,
                
                //FOR NAVIGATIONN -- 
                
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context, 
                    MaterialPageRoute(

                       builder: (context) => Taskpage(),
                  
                    )
                    );
                    
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 61, 190),
                      borderRadius: BorderRadius.circular(20),
                
                    ),
                
                    child: Image(image: AssetImage(
                      'assets/images/delete_icon.png'
                    )),
                  ),
                ),
              )
        ],
      ),

    ),
    );
  }
}