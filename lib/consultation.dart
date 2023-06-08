import 'package:docappointmentnew/detailsConsultation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Consultation extends StatefulWidget {

  @override
  _ConsultationState createState() => _ConsultationState();
}

class _ConsultationState extends State<Consultation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
    child: new AppBar(
    elevation: 0,
    title: Text("KINNENYA", style: new TextStyle(letterSpacing: 2),),
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset('assets/images/category/category1.png' , height: 100,),
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Ortho()),
                          );
                        }, child: Text("Ophtamologue"),


                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Image.asset('assets/images/category/category2.png' , height: 100,),
                      TextButton(
                        onPressed: (){

                        }, child: Text("Dietician"),


                      ),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 10,),

              Row(
                children: [
                  Column(
                    children: [
                      Image.asset('assets/images/category/category3.png' , height: 100,),
                      TextButton(
                        onPressed: (){

                        }, child: Text("Physician"),


                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Image.asset('assets/images/category/category4.png' , height: 100,),
                      TextButton(
                        onPressed: (){

                        }, child: Text("Paralysis"),


                      ),
                    ],
                  ),

                ],
              ),

              SizedBox(height: 10,),

              Row(
                children: [
                  Column(
                    children: [
                      Image.asset('assets/images/category/category5.png' , height: 100,),
                      TextButton(
                        onPressed: (){

                        }, child: Text("Cardiology"),


                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Image.asset('assets/images/category/category6.png' , height: 100,),
                      TextButton(
                        onPressed: (){

                        }, child: Text("MRI - Scan"),


                      ),
                    ],
                  ),

                ],
              ),

              SizedBox(height: 10,),

              Row(
                children: [
                  Column(
                    children: [
                      Image.asset('assets/images/category/category7.png' , height: 100,),
                      TextButton(
                        onPressed: (){

                        }, child: Text("CT-Scan"),


                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Image.asset('assets/images/category/category8.png' , height: 100,),
                      TextButton(
                        onPressed: (){

                        }, child: Text("Gynaecology"),


                      ),
                    ],
                  ),

                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}
