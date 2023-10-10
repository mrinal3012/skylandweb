import 'package:flutter/material.dart';
import 'package:skylandweb/model/model_page.dart';
import 'package:skylandweb/screen/about_page.dart';
import 'package:skylandweb/screen/home_page.dart';
import 'package:skylandweb/screen/our_services_page.dart';
import 'package:skylandweb/screen/project_page.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key});

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
   int ? value=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title:
        Center(child: Text("Skyland Web",style: TextStyle(fontSize: 22, color: Colors.blue,fontWeight: FontWeight.w700),)),),
        body: Container(
          height: double.infinity,width:double.infinity,
          child: Column(children: [
            Expanded(flex: 1, child: Container(height: double.infinity,width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: headerModelList.length,
              itemBuilder: (context, index) =>Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: double.infinity,
                  child: Column(children: [
                    Expanded(flex: 20, child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                      child: InkWell(
                          onTap: () {
                            value = headerModelList[index].id;
                            setState(() {

                            });
                          },
                          child: Container(height: double.infinity, child: Center(child: Text("${headerModelList[index].title}",style: TextStyle(color: Colors.black,fontSize: 21),)),)),
                    ),),
                    Expanded(flex: 1, child: Center(child: Container(height: double.infinity,width: 80, color: headerModelList[index].id==value?Colors.red:Colors.white)))
                  ],),
                ),
              )

            ),
            )),
            Expanded(flex: 10, child: Container(height: double.infinity,width: double.infinity,
              child:value==2?AboutPage(): value==3?OurServicesPage():value==4?ProjectPage():HomePage(),
            )),
          ],),
        ),
      ),
    );
  }
}
