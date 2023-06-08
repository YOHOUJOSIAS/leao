import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Ortho extends StatefulWidget {

  @override
  _OrthoState createState() => _OrthoState();
}

class _OrthoState extends State<Ortho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: new AppBar(
          elevation: 0,
          title: Text("Ophtamologue", style: new TextStyle(letterSpacing: 2),),
          centerTitle: true,
          backgroundColor: Color(0xFF3689cb),

          actions: [
            IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.local_mall_outlined) ),

            IconButton(
                onPressed: (){

                },
                icon: Icon(IconlyLight.notification) ),
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/category/category1.png' , height: 200, width: 200,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
        shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
    ),
    color: Colors.grey.shade300,
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
    children: <Widget>[
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    width: 40.0,
    height: 40.0,
    decoration: new BoxDecoration(
    shape: BoxShape.circle,
    image: new DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage('assets/ortho.jpg')))),
    ),
    Text(
    'Dr Kouassi Ange',
    style: TextStyle(
    color: Colors.black87,
    fontSize: 18.0,
    fontWeight: FontWeight.bold),
    ),
   SizedBox(width: 20,),
      Icon(Icons.offline_pin, color: Colors.green, size: 30,)
    ],
    ),
    ),
    ),
      ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.grey.shade300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/er.jpg')))),
                    ),
                    Text(
                      'Dr Diarra Bintou',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20,),
                    Icon(Icons.offline_pin, color: Colors.green, size: 30,)
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.grey.shade300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/e9.jpg')))),
                    ),
                    Text(
                      'Dr Kacou Roméo',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20,),
                    Icon(Icons.cancel, color: Colors.redAccent, size: 30,)
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
