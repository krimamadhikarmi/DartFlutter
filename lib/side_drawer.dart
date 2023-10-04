import "package:flutter/material.dart";
import 'side_nav_model.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Image(
                image: Image.asset('assets/images/dollar.jpg').image,
              )
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            subtitle: Text('This is home'),
          ),
          Divider(
            height: 3,
            color: Colors.blueGrey.withOpacity(0.3),
          ),
        ],
      ),
    );
  }
}

