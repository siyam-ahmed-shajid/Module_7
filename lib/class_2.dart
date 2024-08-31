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
  List<String> studentList = [
    'Jahid',
    'Nayem',
    'Abir',
    'Hasan',
    'Tonu',
    'Siyam'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Home Screen',
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
      /*body: SingleChildScrollView(
        child: Column(
            children:[
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('kdsfaioserwoinfio'),
              Text('12'),
              Text('12'),
              Text('12'),
            ]
            ),
            )*/

      /*body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('kdsfaioserwoinfio'),
          Text('12'),
          Text('12'),
          Text('12'),
        ],
      ),*/

      /*body: ListView.builder(
          itemCount: 100,
          itemBuilder:(context, index){
            return Text('${index + 1}', style: TextStyle(
              fontSize: 30
            ),
            );
          }
          ),*/

      /*body: ListView.builder(
          itemCount: studentList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(studentList[index], style: TextStyle(
                      fontSize: 35
                  ),
                  ),
                  Divider()
                ],
              ),
            );
          },
      ),*/

      /*body: ListView.separated(
          itemCount: studentList.length,
          itemBuilder: (context, index) {
             //Padding(
              //padding: const EdgeInsets.all(8.0),

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text(studentList[index],
                textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 35
              ),),

            Text(studentList[index],
              textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 35
            ),),
                ],
            );
          },

          separatorBuilder: (context, index){
            return Divider(
              height: 32,
              thickness: 2,
              endIndent: 16,
              indent: 8,
              color: Colors.black,
            );
          },
        )*/

      /*body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Text('1'),
          Text('2'),
          Text('3'),
          Text('4'),
          Text('5'),
          Text('6'),
          Text('7'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
        ],
      ),*/

      /*body: GridView.builder(
        itemCount: studentList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10),
          itemBuilder: (context, index) {
          return Column(
          children: [
            Text('Roll - ${index+1}'),
      Text(studentList[index])
          ],
          );
      }
      ),*/

      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: studentList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    children: [
                      Text(studentList[index], style: TextStyle(
                          fontSize: 18
                      ),
                      ),
                      Divider()
                    ],
                  ),
                );
              },
            ),
            GridView.builder(
              shrinkWrap: true,
                  primary: false,
                  itemCount: 100,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Text('Roll - ${index+1}'),
                        //Text(studentList[index])
                      ],
                    );
                  }
              ),
          ],
        ),
      ),

    );
  }
}

/*Shortcuts for wrap the text:
For Windows: ALT + ENTER
For Mac : Option + ENTER*/

// M_7 second class
// 1 hour 4 minutes