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
          Expanded(flex: 2, child: Container(height: double.infinity,width: double.infinity,
          child: Column(children: [
            Center(child: Text("Our Project",style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.w700 ),)),
            Center(child: Text("Our Recently Completed Projects",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700))),
          ],),)),
          Expanded(flex: 15,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  itemCount: projectList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio:.65,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount:2), itemBuilder: (context, index) =>
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(width: double.infinity,height: double.infinity,
                        color: Colors.white,
                        child: Column(children: [
                          Expanded(flex: 6, child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(image:AssetImage("${projectList[index].image}"))),),
                          )),
                          Expanded(flex: 2, child: Center(child: Text("${projectList[index].name}",style: TextStyle(fontSize: 16,color: Colors.teal,fontWeight: FontWeight.w700),))),
                          Expanded(flex: 1, child: Center(child: Text("${projectList[index].work}",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w700)))),
                          SizedBox(height: 10,)
                        ],),
                        ),
                     ),
                    ),
              ),
          )
        ])
        ,),
    );
  }
}
