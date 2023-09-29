import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popup Menu on AppBar"),
        backgroundColor: Colors.redAccent,
        actions: [

          PopupMenuButton(
            // add icon, by default "3 dot" icon
            // icon: Icon(Icons.book)
              itemBuilder: (context){
                return [

                  PopupMenuItem<int>(
                    value: 0,
                    child: Text("My Account"),
                  ),
                  
                  PopupMenuItem<int>(
                    value: 1,
                    child: Text("Settings"),
                  ),

                  PopupMenuItem<int>(
                    value: 2,
                    child: Text("Logout"),
                  ),
                ];
              },
              onSelected:(value){
                if(value == 0){
                 Navigator.pushNamed(context,"profile");
                }else if(value == 1){
                  print("Settings menu is selected.");
                }else if(value == 2){
                  print("Logout menu is selected.");
                }
              }
          ),

        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 25),
            height:40,// Adjust the height as needed

            child: Center(
              child: Text(
                'Your Container Content',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[

                Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                  color: Colors.lime[800],
                  child: const Center(child: Text('Apple')),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                  color: Colors.lime[600],
                  child: const Center(child: Text('Banana')),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                  color: Colors.lime[400],
                  child: const Center(child: Text('Mango')),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                  color: Colors.lime[200],
                  child: const Center(child: Text('Orange')),
                ),
              ],
            ),
          ),
        ],
      ),
);
  }


}

