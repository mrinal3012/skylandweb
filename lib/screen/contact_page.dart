import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(height: double.infinity,width: double.infinity,child: Column(children: [
          Expanded(child: Container(height: double.infinity,width: double.infinity,)),
          Expanded(child: Container(height: double.infinity,width: double.infinity)),
        ]),),
      ),
    );
  }
}
