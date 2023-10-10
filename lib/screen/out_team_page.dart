import 'package:flutter/material.dart';
import 'package:skylandweb/model/model_page.dart';

class OurTeamPage extends StatefulWidget {
  const OurTeamPage({super.key});

  @override
  State<OurTeamPage> createState() => _OurTeamPageState();
}

class _OurTeamPageState extends State<OurTeamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,height: double.infinity,
        child:Column(children: [
          Expanded(flex: 1, child: Text("Meet our expert Team",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),)),
          Expanded(flex: 15, child: ListView.builder(
            itemCount: teamList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: double.infinity,width: 350,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), image: DecorationImage(fit: BoxFit.cover, image: AssetImage("${teamList[index].image}")))
                    ,),
                ),
          ),),
        ],)

      ),
    );
  }
}
