import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[50],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 90.0,
                  backgroundColor: Colors.teal[200],
                  backgroundImage:
                      NetworkImage("http://github.com/luisfelipesdn12.png"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Luis Felipe",
                  style: TextStyle(
                    fontFamily: "Asap",
                    fontSize: 40.0,
                    color: Colors.grey[850],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Software Developer",
                  style: TextStyle(
                    fontFamily: "Asap",
                    fontSize: 25.0,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[400],
                        offset: Offset(0.0, 1.0),
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.grey[850],
                        size: 25.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "luisfelipesdn12@gmail.com",
                        style: TextStyle(
                          fontFamily: "Asap",
                          fontSize: 20.0,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[400],
                        offset: Offset(0.0, 1.0),
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.link,
                        color: Colors.grey[850],
                        size: 25.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "luisfelipesdn12.now.sh",
                        style: TextStyle(
                          fontFamily: "Asap",
                          fontSize: 20.0,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
