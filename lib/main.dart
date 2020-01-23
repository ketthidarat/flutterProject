import 'package:flutter/material.dart';
import 'package:myproject/pokemon.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


void main() => runApp(MaterialApp(
   title: 'LookingGreatelook',
   debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  HomePageState createState(){
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var url = "https://raw.githubusercontent.com/ketthidarat/flutterProject/master/asset/poke.json";


  @override
  void initState(){
    super.initState();
      fetchData();
  }

  PokeHub pokeHub;


  fetchData() async{
    var res = await http.get(url);
    var decodeValue = jsonDecode(res.body);

    pokeHub = pokeHub.fromJson(decodeValue);

    print(pokeHub)   ;
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Looking Greate Look'),
     ),
     body: GridView.count(
       crossAxisCount: 2, 
       children: pokeHub.pokemon.map(
         (Pokemon poke) => Card()).toList(),
       ),
     drawer: Drawer(),
     floatingActionButton: FloatingActionButton(
       onPressed: () {},
       child: Icon(Icons.refresh),
     ),
   );
  }
}
