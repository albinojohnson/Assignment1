import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nav_Drawer extends StatelessWidget {
  const Nav_Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("EXPLORE",
       style: GoogleFonts.aclonica(
         color: Colors.pink
       ),),

        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://images.unsplash.com/photo-1617083934555-5fc3dc25434d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fG1vdW5hdGluc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                ),
              ),
              accountName: Text("LUNA"),
              accountEmail: Text("lunathedober@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1588095210434-3a062445f093?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8ZG9iZXJtYW4lMjBwaW5zY2hlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1667337105551-5b57327da1c8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hpaCUyMHR6dSUyMGRvZ3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                ),
                CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1516233758813-a38d024919c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGJpcmR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),
                ),
              ],

            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
            leading: Icon(Icons.settings),
    title: Text("Settings"),
    ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
            ),
    ],

      ),
      ),
    );
  }
}



void main(){
  runApp(MaterialApp(home: Nav_Drawer(),));
}