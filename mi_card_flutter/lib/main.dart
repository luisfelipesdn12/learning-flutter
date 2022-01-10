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
                  width: 200.0,
                  child: Divider(
                    color: Colors.grey[400],
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.grey[850],
                      size: 25.0,
                    ),
                    title: Text(
                      "luisfelipesdn12@gmail.com",
                      style: TextStyle(
                        fontFamily: "Asap",
                        fontSize: 20.0,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.link,
                      color: Colors.grey[850],
                      size: 25.0,
                    ),
                    title: Text(
                      "luisfelipesdn12.now.sh",
                      style: TextStyle(
                        fontFamily: "Asap",
                        fontSize: 20.0,
                        color: Colors.grey[600],
                      ),
                    ),
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
