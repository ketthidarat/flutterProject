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
        title: Text("RoV : Arena of Valor"),
        backgroundColor: Colors.pink[100],
        
        
      ),
  
 body: ListView(
      children: <Widget>[
        Container(
          margin:EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: InkWell(
              onTap: () => print("ciao"),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.network(
                        'https://raw.githubusercontent.com/ketthidarat/flutterProject/master/tulen.png',
                       // width: 300,
                        height: 150,
                        fit:BoxFit.fill

                    ),
                  ),
                  ListTile(
                    title: Text('เมจ'),
                    subtitle: Text('เป็นตัวละครที่มีดาเมจสูงเหมือนแครี่ แต่จุดเด่นที่แบ่งแยกจากแครี่คือทำดาเมจเป็นเวทมนต์ และส่วนมากจะทำดาเมจหมู่ด้วย ในขณะที่แครี่ทำดาเมจใส่เป้าหมายเดีว เมจมีพลังชีวิตที่ต่ำ ถูกตกเป็นเป้าเสมอ หน้าที่หลักของเมจคือการทำดาเมจใส่เป้าหมายให้เยอะและมากที่สุด โดยส่วนมากมักเป็นตัวละครประเภทโจมตีไกล'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin:EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: InkWell(
              onTap: () => print("ciao"),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.network(
                        'https://placeimg.com/640/480/any',
                        // width: 300,
                        height: 150,
                        fit:BoxFit.fill

                    ),
                  ),
                  ListTile(
                    title: Text('แครี่'),
                    subtitle: Text(' เป็นตัวละครมีดาเมจที่รุนแรงแต่จำเป็นต้องใช้ไอเทมหลายชิ้น โดยส่วนมากโจมตีเป็นกายภาพ และมีพลังชีวิตไม่ค่อยมากนัก ถูกสังหารได้ง่าย มักตกเป็นเป้าของแอสซาซิน หน้าที่หลักของแครี่คือการทำดาเมจให้เยอะและไวที่สุด โดยส่วนมากจะเป็นตัวละครประเภทโจมตีไกล'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin:EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: InkWell(
              onTap: () => print("ciao"),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.network(
                        'https://placeimg.com/640/480/any',
                        // width: 300,
                        height: 150,
                        fit:BoxFit.fill

                    ),
                  ),
                  ListTile(
                    title: Text('แทงค์'),
                    subtitle: Text('เป็นตัวละครที่มีดาเมจน้อย แต่มีความโดดเด่นในความอึด รวมทั้งมี CC ในการทำจังหวะให้เพื่อน แทงค์มีความสามารถในการทำดาเมจทั้งกายภาพและเวทมนต์ หน้าที่หลักของเขาคือสร้างเพื้นที่ให้กับเพื่อนร่วมทีมสามารถทำสิ่งต่าง ๆ ได้ง่ายขึ้น โดยส่วนมากเป็นตัวละครประเภทโจมตีใกล้'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
      );
  }
  }