import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tab_ex extends StatelessWidget {
  const Tab_ex({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Whatsapp"),
            actions: [
              const Icon(Icons.search),
              SizedBox(width: 50),
              const Icon(Icons.camera_alt),
              SizedBox(width: 50),
              PopupMenuButton(itemBuilder: (context){
                return[
                  const PopupMenuItem(child: Text("Settings")),
                  PopupMenuItem(child: Text("My profile")),
                  PopupMenuItem(child: Text("New group")),
                  PopupMenuItem(child: Text("New broadcast")),
                  PopupMenuItem(child: Text("Linked device")),
                  PopupMenuItem(child: Text("Starred messages")),
                  PopupMenuItem(child: Text("Payments")),
                  PopupMenuItem(child: Text("Settings")),

                ];
              }
              ),
            ],
            bottom:  TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                labelPadding: EdgeInsets.zero,
                isScrollable: true,
                tabs: [
              SizedBox(
                  width: MediaQuery.of(context).size.width*.1,
                  child: FaIcon(FontAwesomeIcons.peopleGroup)),
              SizedBox(
                  width: MediaQuery.of(context).size.width*.3,
                  child: Text("Chat")),
              SizedBox(
                  width: MediaQuery.of(context).size.width*.3,
                  child: Text("Status")),
              SizedBox(
                  width: MediaQuery.of(context).size.width*.3,
                  child: Text("Call")),
            ]),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Community")),
              Center(child: Text("Chat")),
              Center(child: Text("Settings")),
              Center(child: Text("Call")),

            ],
          ),
        ),
    );
  }
}


void main(){
  runApp(MaterialApp(home: Tab_ex(),));
}
