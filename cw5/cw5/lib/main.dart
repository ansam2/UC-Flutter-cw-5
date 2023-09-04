import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {
   MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
int num1 =1;

int num2 =1;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: Center(child: Text("rock papper scissors")),  backgroundColor: Colors.pink,),
        body: Center(
          child:Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children:
               [Image.asset("images/i_$num1.png", width: 150, ),
                Image.asset("images/i_$num2.png", width: 150,)],),
                SizedBox(height: 20,),
                ElevatedButton
                    (onPressed: (){setState(() {
                  num1= Random().nextInt(3) +1;
                  num2= Random().nextInt(3) +1;

                });}, child: Text("play"))
                ],),
                
           
          ),
        ),
      );
    
  }
}
