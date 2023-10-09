import 'package:flutter/material.dart';
import 'package:skylandweb/model/model_page.dart';

class OurServicesPage extends StatefulWidget {
  const OurServicesPage({super.key});

  @override
  State<OurServicesPage> createState() => _OurServicesPageState();
}

class _OurServicesPageState extends State<OurServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,
        child: Column(children: [
          Expanded(flex: 1, child: Container(height: double.infinity,width: double.infinity,
            child: Column(children: [
              Center(child: Text("Our Project",style: TextStyle(fontSize: 18,color: Colors.blue),)),
              Center(child: Text("Our Recently Completed Projects",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700))),
            ],),)),
          Expanded(flex: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: ourServicesList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio:.55,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount:2), itemBuilder: (context, index) =>
                  Container(width: double.infinity,height: double.infinity,
                    color: Colors.white,
                    padding: const EdgeInsets.all(8.0),

                    child: Column(children: [
                      Expanded(flex: 12, child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(image:AssetImage("${ourServicesList[index].image}"))),),
                      )),
                      Expanded(flex: 2, child: Center(child: Text("${ourServicesList[index].name}",style: TextStyle(fontSize: 20,color: Colors.teal,fontWeight: FontWeight.w700),))),
                      Expanded(flex: 2, child: Center(child: Text("${ourServicesList[index].details}",maxLines: 1,style: TextStyle(fontSize: 17),))),
                      Expanded(flex: 2, child: Container (width: 100, height: 50,decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(15)),  child: Center( child: Text("Read More",style: TextStyle(fontWeight: FontWeight.w600),)),)),
                    ],),
                  ),),
            ),
          )
        ])
        ,),
    );
  }
}
