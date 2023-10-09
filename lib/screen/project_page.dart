import 'package:flutter/material.dart';
import 'package:skylandweb/model/model_page.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
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
                  itemCount: projectList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio:.65,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount:2), itemBuilder: (context, index) =>
                    Container(width: double.infinity,height: double.infinity,
                    child: Column(children: [
                      Expanded(flex: 10, child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),image: DecorationImage(image:AssetImage("${projectList[index].image}"))),)),
                      Expanded(flex: 1, child: Center(child: Text("${projectList[index].name}",style: TextStyle(fontSize: 20,color: Colors.teal,fontWeight: FontWeight.w700),))),
                      Expanded(flex: 1, child: Center(child: Text("${projectList[index].work}"))),
                    ],),
                    ),),
              ),
          )
        ])
        ,),
    );
  }
}
