import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());  //Application
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        // theme: ThemeData(primarySwatch: Colors.green),
        home:HomeAcivity()
    );
  }


}

class HomeAcivity extends StatelessWidget{
  const HomeAcivity({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text("My App",style: TextStyle(color: Colors.white),),backgroundColor: Colors.green,),
      body: Text("Hello World"),
    );
  }

}
