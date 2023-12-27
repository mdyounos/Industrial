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
        debugShowCheckedModeBanner: false,
        //color: Colors.blue,
        home:HomeAcivity()
    );
  }


}

class HomeAcivity extends StatelessWidget{
  const HomeAcivity({super.key});

  MySnackBar(message,context){

    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("My Information",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){MySnackBar('Facebook', context);},
              icon: Icon(Icons.facebook))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.search),
        onPressed: (){
          MySnackBar('Tap on Floating Action Button', context);

        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.email),label: "Email"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
        onTap: (int index){
          if(index==0){
            MySnackBar('Tap on Bottom Navigation Bar ${index+1}', context);
          }
          if(index==1){
            MySnackBar('Tap on Bottom Navigation Bar ${index+1}', context);
          }
          if(index==2){
            MySnackBar('Tap on Bottom Navigation Bar ${index+1}', context);
          }
        }


      ),

      body: Text("Hello World"),

      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child: Text("About Me")),
            ListTile(title: Text("Md Younos"),),
            ListTile(title: Text("ID: 194028"),),
            ListTile(title: Text("Department: CSE"),),
            ListTile(title: Text("DUET, Gazipur"),),
          ],
        ),
      ),
      //endDrawer: (),
    );
  }

}
