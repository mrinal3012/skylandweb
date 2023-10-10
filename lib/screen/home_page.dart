import 'package:flutter/material.dart';
import 'package:skylandweb/model/model_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,
        child:ListView.builder(
          itemCount: homeList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
            child: Container(width: 350,height: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.red, image: DecorationImage(fit: BoxFit.cover, image: AssetImage("${homeList[index].image}"))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Expanded(flex: 10, child: Container()),
                Expanded(flex: 1, child: Text("${homeList[index].name}",style: TextStyle(fontSize: 18,color: Colors.cyanAccent,fontWeight: FontWeight.w800),)),
                Expanded(flex: 4, child: Center(child: Text("${homeList[index].details}",style: TextStyle(fontSize: 35,color:Color(0xff1B192F),fontWeight: FontWeight.w800),))),
                SizedBox(height: 10,),
                Expanded(flex: 6, child: Text("${homeList[index].totaldetails}",style: TextStyle(fontSize: 20,color: Color(0xff1B192F),fontWeight: FontWeight.w800),)),

              ]),
            ),),
          ),)
        ,),
    );
  }
}
