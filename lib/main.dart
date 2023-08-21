import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(MaterialApp(home: Home(),debugShowCheckedModeBanner: false,));
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("this is new application")),
      //Text("HyY ThIS iS New_ABC",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.lightBlue,overflow: TextOverflow.clip)),
      // body: Container(width: 150,height: 150,),
      body: Container(decoration: BoxDecoration(color: Colors.red,border: Border(top: BorderSide(width: 10,color: Colors.green),right: BorderSide(width: 10,color: Colors.yellow),bottom: BorderSide(width: 10,color: Colors.orange),left:BorderSide(width: 10,color: Colors.brown))),width: 120,height: 120,),
    );
  }
}

