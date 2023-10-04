import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideNavModel{
  String? title;
  IconData? iconData;
  String?subtitle;

  SideNavModel({this.title,this.iconData,this.subtitle}); //Curly brackets halena bhane tala suggestion audaina
}

final List<SideNavModel> sideNavList =[

  //SideNavModel('about', Icons.abc_outlined,'home'), //Curly brackets halena bhane yesari halda huncha
  SideNavModel(title: 'Home', iconData: Icons.home),
  SideNavModel(title: 'About', iconData: Icons.abc_outlined),
  SideNavModel(title: 'Products', iconData: Icons.production_quantity_limits),
  SideNavModel(title: 'Blog', iconData: Icons.block),
  SideNavModel(title: 'Contact', iconData: Icons.phone),
];

