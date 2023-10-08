import 'package:flutter/material.dart';
import 'package:skylandweb/model/model_page.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key});

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {

   int ? value=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      Center(child: Text("Skyland Web")),),
      body: Container(
        height: double.infinity,width:double.infinity,
        child: Column(children: [
          Expanded(flex: 1, child: Container(height: double.infinity,width: double.infinity,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: HeaderModelList.length,
            itemBuilder: (context, index) =>Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: double.infinity,
                child: Column(children: [
                  Expanded(flex: 20, child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                    child: InkWell(
                        onTap: () {
                          value = HeaderModelList[index].id;
                          setState(() {

                          });
                        },
                        child: Container(height: double.infinity, child: Center(child: Text("${HeaderModelList[index].title}",style: TextStyle(color: Colors.pink,fontSize: 21),)),)),
                  ),),
                  Expanded(flex: 1, child: Center(child: Container(height: double.infinity,width: 80, color: HeaderModelList[index].id==value?Colors.red:Colors.white)))
                ],),
              ),
            )

          ),
          )),
          Expanded(flex: 10, child: Container(height: double.infinity,width: double.infinity,
          )),
        ],),
      ),
    );
  }
}
