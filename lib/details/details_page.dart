import 'package:flutter/material.dart';
import 'package:skylandweb/model/model_page.dart';
import 'package:skylandweb/screen/our_services_page.dart';

class DetailsPage extends StatefulWidget {
  // const DetailsPage({super.key});

  OurServices ? services;
  DetailsPage({required this.services});
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(width: double.infinity,height: double.infinity,
          color: Colors.white,
          child: Column(children: [
            Expanded(flex: 5, child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(image:AssetImage("${widget.services!.image}"))),)),
            Expanded(flex: 2, child: Center(child: Text("${widget.services!.name}",style: TextStyle(fontSize: 35,color: Colors.teal,fontWeight: FontWeight.w700),))),
            Expanded(flex: 2, child: Center(child: Text("${widget.services!.details}",style: TextStyle(fontSize: 20),))),
            ],),
        ),
      ),
    );
  }
}
