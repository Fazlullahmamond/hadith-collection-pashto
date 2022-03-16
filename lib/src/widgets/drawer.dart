import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            height: 150,
            width: double.infinity,
            color: Colors.black54,
          ),
          TextButton.icon(
            onPressed: () => '',
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            label: Text(
              'Profile',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton.icon(
            onPressed: () => '',
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            label: Text(
              'Settings',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton.icon(
            onPressed: () => '',
            icon: Icon(
              Icons.info,
              color: Colors.black,
            ),
            label: Text(
              'About Us',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton.icon(
            onPressed: () => '',
            icon: Icon(
              Icons.feedback,
              color: Colors.black,
            ),
            label: Text(
              'Feedback',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton.icon(
            onPressed: () => '',
            icon: Icon(
              Icons.sentiment_satisfied_alt,
              color: Colors.black,
            ),
            label: Text(
              'Rate Us',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton.icon(
            onPressed: () => '',
            icon: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
            label: Text(
              'More App',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton.icon(
            onPressed: () => '',
            icon: Icon(
              Icons.power_settings_new,
              color: Colors.black,
            ),
            label: Text(
              'Exit',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
