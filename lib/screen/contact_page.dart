import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(height: double.infinity,width: double.infinity,child: Column(children: [
          Expanded(flex: 2, child: Container(
            decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black12)),
            height: double.infinity,width: double.infinity,
            child: GoogleMap(
            initialCameraPosition: CameraPosition(
            target:LatLng(23.75634003123062, 90.41036483518091),
          zoom: 15,
        ),
        markers: {
          Marker(
            markerId: MarkerId("demo"),
            position: LatLng(23.75634003123062, 90.41036483518091),
          )
        },
        ),
          )),
          SizedBox(height: 5,),
          Expanded(child: Container(height: double.infinity,width: double.infinity,
            child: Column(children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: double.infinity,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey.withOpacity(.2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    SizedBox(width: 10,),
                    Expanded(flex: 1, child: Container(child: Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10,right: 5,left: 5),
                      child: Container(height: double.infinity,width: double.infinity, child: Icon(Icons.location_on,color: Colors.white,),decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.cyan),),
                    ),)),
                      SizedBox(width: 20,),
                    Expanded(flex: 5, child: Container(child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8,),
                        Expanded( flex: 1,child: Container(child: Container(child: Text("Address",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.blue),),),)),
                        Expanded(flex: 1, child: Container(child: Container(child: Text("9717 105th St Ozone Park, NY 11416",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black),),),)),
                        SizedBox(height: 8,),
                      ],
                    ),)),

                  ],),
                ),
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: double.infinity,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey.withOpacity(.2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 10,),
                      Expanded(flex: 1, child: Container(child: Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10,right: 5,left: 5),
                        child: Container(height: double.infinity,width: double.infinity, child: Icon(Icons.call,color: Colors.white,),decoration: BoxDecoration(borderRadius: BorderRadius.circular(200),color: Colors.cyan),),
                      ),)),
                      SizedBox(width: 20,),
                      Expanded(flex: 5, child: Container(child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8,),
                          Expanded( flex: 1,child: Container(child: Container(child: Text("Call Us",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.blue),),),)),
                          Expanded(flex: 1, child: Container(child: Container(child: Text("+1(347)257-3951",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black),),),)),
                          SizedBox(height: 8,),
                        ],
                      ),)),

                    ],),
                ),
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: double.infinity,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey.withOpacity(.2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 10,),
                      Expanded(flex: 1, child: Container(child: Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10,right: 5,left: 5),
                        child: Container(height: double.infinity,width: double.infinity, child: Icon(Icons.email,color: Colors.white,),decoration: BoxDecoration(borderRadius: BorderRadius.circular(200),color: Colors.cyan),),
                      ),)),
                      SizedBox(width: 20,),
                      Expanded(flex: 5, child: Container(child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8,),
                          Expanded( flex: 1,child: Container(child: Container(child: Text("Email Us",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.blue),),),)),
                          Expanded(flex: 1, child: Container(child: Container(child: Text("info@skylandweb.com",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black),),),)),
                          SizedBox(height: 8,),
                        ],
                      ),)),

                    ],),
                ),
              )),
            ]),
          )),
        ]),),
      ),
    );
  }
}
