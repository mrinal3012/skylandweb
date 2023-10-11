import 'package:flutter/material.dart';
import 'package:skylandweb/model/model_page.dart';

class TestimonialPage extends StatefulWidget {
  const TestimonialPage({super.key});

  @override
  State<TestimonialPage> createState() => _TestimonialPageState();
}

class _TestimonialPageState extends State<TestimonialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: GridView.builder(
            scrollDirection: Axis.vertical,
            itemCount:testimonialList.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:1,childAspectRatio: 1,crossAxisSpacing: 2,mainAxisSpacing: 2),
            itemBuilder: (context, index) =>
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(width: double.infinity,height: double.infinity,
                    decoration: BoxDecoration(color: Colors.cyanAccent.withOpacity(0.1),borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Expanded(flex: 1, child: Text("${testimonialList[index].name}",style: TextStyle(fontSize: 25,color: Colors.blue),)),
                      Expanded(flex: 2, child: Text("${testimonialList[index].title}",style: TextStyle(fontSize: 18,color: Colors.black))),
                      Expanded(flex: 1, child: Container(width: double.infinity,height: double.infinity,
                      child: Row(
                        children: [
                          Expanded(flex: 1, child:Icon(Icons.star,color: Colors.blue,) ),
                          Expanded(flex: 1, child:Icon(Icons.star,color: Colors.blue,) ),
                          Expanded(flex: 1, child:Icon(Icons.star,color: Colors.blue,) ),
                          Expanded(flex: 1, child:Icon(Icons.star,color: Colors.blue,) ),
                          Expanded(flex: 1, child:Icon(Icons.star,color: Colors.blue,) ),
                          Expanded(flex: 8, child: SizedBox())
                        ],
                      ),
                      )),
                      Expanded(flex: 5, child: Text("${testimonialList[index].details}",style: TextStyle(fontSize: 15,color: Colors.black),)),
                    ],
                  ),
                  ),
                ),),
      ),
    );
  }
}
