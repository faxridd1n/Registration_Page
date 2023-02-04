import 'package:exam_ui/items/attributes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/contactModel.dart';

class Profile extends StatefulWidget {
  Profile(this.index, {super.key});
  int index;
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text(
          'Contacts',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 25,
          ),
          SizedBox(
            width: 10,
          ),
          PopupMenuButton(
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
              size: 25,
            ),
            onSelected: (val) => setState(
              () {
                val = val;
              },
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('cancel'),
                ),
              ),
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('exit'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipOval(
                child: Image.asset('assets/c.jpg',
                    height: 110, width: 110, fit: BoxFit.cover),
              ),
              SizedBox(width: 30),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black, size: 25),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit, color: Colors.black, size: 25),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                contactsList[widget.index].name,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
