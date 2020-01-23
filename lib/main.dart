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
  var url = "https://raw.githubusercontent.com//ketthidarat/myproject/master/pokedex.json";


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
         (Pokemon poke) => Padding(
           padding: const EdgeInsets.all(8.0),
           child: Card(
            elevation: 3.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(poke.img)
                    )
                  ),
                ),
                Text(
                  poke.name,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    ))
              ],
            ),
           ),
       ))
       .toList(),
       ),
     drawer: Drawer(),
     floatingActionButton: FloatingActionButton(
       onPressed: () {},
     ),
   );
  }
}
