import 'package:flutter/material.dart';
import 'package:skylandweb/details/details_page.dart';
import 'package:skylandweb/model/model_page.dart';

class OurServicesPage extends StatefulWidget {
  const OurServicesPage({super.key});

  @override
  State<OurServicesPage> createState() => _OurServicesPageState();
}

class _OurServicesPageState extends State<OurServicesPage> {

List detailsvalue=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,
        child: Column(children: [
          Expanded(flex: 2, child: Container(height: double.infinity,width: double.infinity,
            child: Column(children: [
              Center(child: Text("Our Project",style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.w700),)),
              Center(child: Text("Our Recently Completed Projects",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700))),
            ],),)),
          Expanded(flex: 15,
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
                      Expanded(flex: 8, child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(image:AssetImage("${ourServicesList[index].image}"))),),
                      )),
                      Expanded(flex: 2, child: Center(child: Text("${ourServicesList[index].name}",style: TextStyle(fontSize: 16,color: Colors.teal,fontWeight: FontWeight.w700),))),
                      Expanded(flex: 3, child: Center(child: Text("${ourServicesList[index].details}",maxLines: 2,style: TextStyle(fontSize: 12),))),
                      Expanded(flex: 2, child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                                DetailsPage(services: ourServicesList[index]),));
                          },
                          child: Container (width: 100, height: 50,decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(15)),  child: Center( child: Text("Read More",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),)),))),
                    ],),
                  ),),
            ),
          )
        ])
        ,),
    );
  }
}
