import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
        appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.pink[100],
      ),body: Center(
        child: Text( 'Home'

        ),
      )
    );
    
    
  }
}
