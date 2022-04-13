import 'package:flutter/material.dart';
import 'package:todo/screen/Taskpage.dart';
import 'package:todo/widgets.dart';

// type stful to create widit -
class homepage extends StatefulWidget {
  const homepage({ Key? key }) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea (
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 32.0
          ),

          color: Color.fromARGB(255, 232, 232, 232),

          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 32.0,
                      top: 32.0 
                    ),
                    child: Image(
                      image: AssetImage(
                        'assets/images/logo.png'),
                        ),
                  ),

                      //taskCard - 
                      // EXPANDED FOR SCROOLING - 
                      Expanded(
                        child: ListView(
                          children :[
                      
                            TaskCard(
                          title: "Get Started !", des: 'Hello User! Welcome to WHAT_TODO App. this is a default task that you can edit or delet to start using the app'
                          ),
                        // get more and more card -
                        TaskCard(des: 'Ratnakar', title: 'Abhay'),
                        TaskCard(des: 'Ratnakar', title: 'Abhay'),
                        TaskCard(des: 'Ratnakar', title: 'Abhay'),
                        TaskCard(des: 'Ratnakar', title: 'Abhay'),
                        TaskCard(des: 'Ratnakar', title: 'Abhay'),
                        TaskCard(des: 'Ratnakar', title: 'Abhay'),
                        
                      
                          ],
                      
                        ),
                      ),
                      
                ],
              ),
              Positioned(
                bottom: 24.0,
                right: 0.0,
                
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
                      gradient: LinearGradient(
                         colors: [Color(0xFF7349FE) , Color(0xFF643FD0) ],
                         
                         begin: Alignment(0.0,-1.0),
                         end: Alignment(0.0,1.0),                         ),
                      borderRadius: BorderRadius.circular(20),
                
                    ),
                
                    child: Image(image: AssetImage(
                      'assets/images/add_icon.png'
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}