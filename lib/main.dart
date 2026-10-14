import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// The main function is the entry point of your Flutter application.
void main() {
  runApp(const MyApp());
}

// MyApp is the root widget of your application tree.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
    );
  }
}

// HomeScreen manages the layout and UI of the main screen.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  mySnackBar(message, context){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message),
    ),
  );
  }
  MyAlertDialog(context){
    return showDialog(
        context: context, 
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text("Alert ......!"),
                content: Text("Do you want to delete ?"),
                actions: [
                  TextButton(onPressed: (){}, child: Text('Yes'))
                ],
              )
          )
        }
    )
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo app"),
        toolbarHeight: 60,
        backgroundColor: Colors.green,
        toolbarOpacity: 1,
        titleSpacing: 0,
        actions: [
          IconButton(onPressed: (){
            mySnackBar("Hello comment", context);
          }, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){
            mySnackBar("Hello search", context);
          }, icon: Icon(Icons.search)),
          IconButton(onPressed: (){
            mySnackBar("Hello settings", context);
          }, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){
            mySnackBar("Hello email....", context);
          }, icon: Icon(Icons.email)),
          IconButton(onPressed: (){
            mySnackBar("Hello notifications....", context);
          }, icon: Icon(Icons.notifications)),
        ],

      ),
      floatingActionButton: FloatingActionButton(
          elevation: 10,
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          onPressed: (){
            mySnackBar("This is floating action button", context);
          }
      
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.contacts),label: "Contacts"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
        onTap: (int index){
          if(index == 0){
            mySnackBar("Home bottom navigation home", context);
          }
          if(index == 1){
            mySnackBar("Home bottom navigation contacts", context);
          }
          if(index == 2){
            mySnackBar("Home bottom navigation profile", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsetsGeometry.all(0),
                child:UserAccountsDrawerHeader(
                    accountName: Text("Maksud Bhuiyan"),
                    accountEmail: Text("maksud@gmail.com"),
                    decoration: BoxDecoration(color: Colors.black),
                    currentAccountPicture: Image.network("https://icon-icons.com/authors/816-terence-eden"),

                ),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  mySnackBar("My on drower", context);
                },
            ),
            ListTile(
               leading: Icon(Icons.contacts),
                title: Text("Contacts"),

            ),
            ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Profile")),
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 100,width: 100,child: Image.network("https://my-showcase-story-62.lovable.app/assets/profile-DKupR5Xw.jpg"),),
          Container(height: 100,width: 100,child: Image.network("https://my-showcase-story-62.lovable.app/assets/profile-DKupR5Xw.jpg"),),
          Container(height: 100,width: 100,child: Image.network("https://my-showcase-story-62.lovable.app/assets/profile-DKupR5Xw.jpg"),),
        ],
      ),


    );
  }
}
