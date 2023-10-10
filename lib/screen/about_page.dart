import 'package:flutter/material.dart';
import 'package:skylandweb/model/model_page.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {


  About firstAbout = aboutList[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
        child: Container(
          width: double.infinity,height: double.infinity,
          child:Column(
            children: [
              Expanded(flex: 5, child: Container(child:  Image.asset("${firstAbout.image}"))),
              Expanded(flex: 5, child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 1, child: Text("About us",style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.w800),)),
                  Expanded(flex: 2, child: Text("${firstAbout.name}",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900),)),
                  Expanded(flex: 7, child: Text("${firstAbout.details}")),
                ],
              ),)

            ],
          ),),
      ),
    );
  }
}
