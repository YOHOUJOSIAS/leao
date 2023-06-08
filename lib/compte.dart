import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Compte extends StatefulWidget {

  @override
  _CompteState createState() => _CompteState();
}

class _CompteState extends State<Compte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: new AppBar(
          elevation: 0,
          title: Text("Mon Compte", style: new TextStyle(letterSpacing: 2),),
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
    );
  }
}
