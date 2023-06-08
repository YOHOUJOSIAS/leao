import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Fiche extends StatefulWidget {


  @override
  _FicheState createState() => _FicheState();
}

class _FicheState extends State<Fiche> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: new AppBar(
          elevation: 0,
          title: Text("Fiche médicale", style: new TextStyle(letterSpacing: 2),),
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
                icon: Icon(IconlyLight.notification)),
          ],
        ),
      ),
      body: Container(
         height: MediaQuery.of(context).size.height,
        color: Colors.grey,
        child: Column(
          children: [
             Text('Information'),
          ],
        ),
      ),
    );
  }
}
