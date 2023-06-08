import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'DocInfoPage.dart';
import 'HomePage.dart';

class HommeScreen extends StatefulWidget { Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
theme: ThemeData(
fontFamily: 'avenir',
),
home: MyFirstPage(),
routes: {
'/DocInfoPage' : (context)=>DocInfoPage(),
},
);
}

  @override
  _HommeScreenState createState() => _HommeScreenState();
}

class _HommeScreenState extends State<HommeScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: new AppBar(
          elevation: 0,
          title: Text("Accueil", style: new TextStyle(letterSpacing: 2),),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/onBoardDoc.png', height: 190, width: MediaQuery.of(context).size.width,),
            Padding(
              padding: EdgeInsets.only(left: 14, right: 10, top: 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("", style: TextStyle(
                    fontSize: 1,
                    fontWeight: FontWeight.w700,
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 120,
                  //   margin: EdgeInsets.only(top: 10),
                  //   child: ListView(
                  //     physics: BouncingScrollPhysics(),
                  //     scrollDirection: Axis.horizontal,
                  //     children: <Widget>[
                  //       categoryContainer("category7.png", "CT-Scan"),
                  //       categoryContainer("category1.png", "Ortho"),
                  //       categoryContainer("category2.png", "Dietician"),
                  //       categoryContainer("category3.png", "Physician"),
                  //       categoryContainer("category4.png", "Paralysis"),
                  //       categoryContainer("category5.png", "Cardiology"),
                  //       categoryContainer("category6.png", "MRI - Scan"),
                  //       categoryContainer("category8.png", "Gynaecology"),
                  //     ],
                  //   ),
                  // ),

                  SizedBox(height: 20,),
                  SingleChildScrollView(
                    child: Container(
                      height: 400,
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: <Widget>[
                            createDocWidget("doc1.png", "Diabète, obésité, 18 MAI"),
                            createDocWidget("doc2.png", "Paul Barbara"),
                            createDocWidget("doc3.png", "Nancy Williams"),
                            createDocWidget("doc1.png", "Susan Thomas"),
                            createDocWidget("doc2.png", "Paul Barbara"),
                            createDocWidget("doc3.png", "Nancy Williams"),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container categoryContainer(String imgName, String title)
  {
    return Container(
      width: 130,
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/category/$imgName'),
          Text(
            "$title", style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 17
          ),
          )
        ],
      ),
    );
  }
  Container createDocWidget(String imgName, String docName)
  {
    return Container(
      child: InkWell(
        child: Container(

          margin: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            color: Colors.blue,
          ),
          child: Container(
            padding: EdgeInsets.all(7),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 70,
                  height: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/docprofile/$imgName'),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Dr. $docName", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(height: 5,),
                    // Container(
                    //   width: 170,
                    //   height: 50,
                    //   child: Text("Les Informations concernant le docteur", style: TextStyle(
                    //     fontSize: 12,
                    //     fontWeight: FontWeight.w400,
                    //   ),
                    //     overflow: TextOverflow.clip,
                    //   ),
                    // )
                  ],
                )
              ],
            ),
          ),
        ),
        onTap: openDocInfo,
      ),
    );
  }
  void openDocInfo()
  {
    Navigator.pushNamed(context, '/DocInfoPage');
  }
}

class pathPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = new Paint();


    Path path = new Path();
    path.moveTo(0, 0);
    path.lineTo(size.width*0.3, 0);
    path.quadraticBezierTo(size.width*0.5, size.height*0.03, size.width*0.42, size.height*0.17);
    path.quadraticBezierTo(size.width*0.35, size.height*0.32, 0, size.height*0.29);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}

