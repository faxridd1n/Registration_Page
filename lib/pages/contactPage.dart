import 'package:exam_ui/items/attributes.dart';
import 'package:exam_ui/items/contactItem.dart';
import 'package:exam_ui/models/contactModel.dart';
import 'package:exam_ui/pages/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
                    setState(() {
                      contactsList.clear();
                    });
                  },
                  child: Text('delete'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: contactsList.length,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile(index)));
                },
                child: contactItem(context, contactsList[index]));
          }),
    );
  }
}
