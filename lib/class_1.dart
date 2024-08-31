//Button(ElevatedButton, TextButton, IconButton, GestureDetector, Inkwell)
// TextField | Container | Padding

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      //debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

//Colum = Vertically
// Row = Horizontally

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          ' Home Screen',
          style: TextStyle(
            color: Colors.white,
          ),
        ),

        //#Leading Button and Snackbar

        //leading: Icon(Icons.home_filled, color: Colors.white),
        //actions: [
        //IconButton(
        //onPressed: () {
        //ScaffoldMessenger.of(context).showSnackBar(
        //SnackBar(
        //content: Text('Money has been transferred'),
        //backgroundColor: Colors.greenAccent,
        //duration: Duration(seconds: 3),
        //),
        // );
        //},
        // icon: Icon(Icons.add)),
        //);
        //],

        // #Dialog box and Icon button

        leading: Icon(
          Icons.home_filled,
          color: Colors.white,
        ),
        actions: [
          IconButton(
              onPressed: () {
                //showAboutDialog(context: context);
                //#for custom dialog
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Send Money'),
                        content:
                        Text('Are you sure that you want to send money'),
                        actions: [],
                      );
                    });
              },
              icon: Icon(Icons.add)),
        ],
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
            /* ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.yellow,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    width: 3,
                    color: Colors.green,
                  )),
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            ),
            onPressed: () {
              print('Pressed');
            },
            child: Text('Press Here'),
          ),

          TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                textStyle: TextStyle(fontSize: 24)),
            onPressed: () {},
            child: Text(
              'TextButton',
            ),
          ),

          IconButton(
            onPressed: () {
              print('Tapped in icon button');
            },
            icon: Icon(
              Icons.alarm_add,
              color: Colors.deepOrangeAccent,
            ),
          ),

          GestureDetector(
              onTap: () {
                print('on tap detected');
              },
              onDoubleTap: () {
                print('Double tap detected');
              },
              onLongPress: () {
                print('Long Pressed');
              },
              child: Column(
                children: [
                  Text('dskljfals'),
                  Icon(Icons.add_circle),
                  Row(
                    children: [
                      Text('This is Row'),
                    ],
                  )
                ],
              )),

          InkWell(
              splashColor: Colors.orange,
              radius: 10,
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                print('on tap detected');
              },
              onDoubleTap: () {
                print('Double tap detected');
              },
              onLongPress: () {
                print('Long Pressed');
              },
              child: Column(
                children: [
                  Text('dskljfals'),
                  Icon(Icons.add_circle),
                  Row(
                    children: [
                      Text('This is Row'),
                    ],
                  )
                ],
              )),

          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              //controller: TextEditingController(),
              //enabled: false,
              style: TextStyle(
                fontSize: 25,
                color: Colors.green,
              ),
              maxLength: 15,
              decoration: InputDecoration(
                  hintText: 'Enter your e-mail.',
                  hintStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                //label: Text('Email'),
                labelText: 'Email',
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.red,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 4, color: Colors.indigoAccent),
               ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 4, color: Colors.redAccent),
                  borderRadius: BorderRadius.circular(16),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(width: 4, color: Colors.indigo),
                ),
                //disabledBorder: OutlineInputBorder(
                  //borderRadius: BorderRadius.circular(8),
                  //borderSide: BorderSide(width: 5, color: Colors.grey),
                //),

                fillColor: Colors.white,
                filled: true,

                prefixIcon: Icon(Icons.add),
                prefixIconColor: Colors.green,
                suffixIcon: Icon(Icons.undo),
                suffixIconColor: Colors.red,
             ),
            ),
          ),*/
            Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(26),
              border: Border.all(color: Colors.black, width: 2),
              //border: Border(
              //top: BorderSide(color: Colors.red, width: 3),
              // bottom: BorderSide(color: Colors.red, width: 3),
              //left: BorderSide(color: Colors.red, width: 3),
              //right: BorderSide(color: Colors.red, width: 3),
              //),
              image: DecorationImage(
                image: AssetImage('assets/Images/cat.jpg')
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.9),
                  spreadRadius: 5,
                  blurRadius: 8,
                  offset: Offset(0, 3),
                )
              ]
              ),
        alignment: Alignment.center,
        child: Text('Cat', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        ),
      )
      ],
    ),
      ),
    );
  }
}

// M_7 first class
// Container 
