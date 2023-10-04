
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('This is spotify'),
          Icon(
            FontAwesomeIcons.spotify,
            color:Colors.green,
          ),
        ],
      ),
    );
  }
}
